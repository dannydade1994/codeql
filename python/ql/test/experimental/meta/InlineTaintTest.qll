/**
 * Defines a InlineExpectationsTest for checking whether any arguments in
 * `ensure_tainted` and `ensure_not_tainted` calls are tainted.
 *
 * Also defines query predicates to ensure that:
 * - if any arguments to `ensure_not_tainted` are tainted, their annotation is marked with `SPURIOUS`.
 * - if any arguments to `ensure_tainted` are not tainted, their annotation is marked with `MISSING`.
 *
 * The functionality of this module is tested in `ql/test/experimental/meta/inline-taint-test-demo`.
 */

import python
import semmle.python.dataflow.new.DataFlow
import semmle.python.dataflow.new.TaintTracking
import semmle.python.dataflow.new.RemoteFlowSources
import TestUtilities.InlineExpectationsTest
import experimental.dataflow.TestUtil.PrintNode

DataFlow::Node shouldBeTainted() {
  exists(DataFlow::CallCfgNode call |
    call.getFunction().asCfgNode().(NameNode).getId() = "ensure_tainted" and
    result in [call.getArg(_), call.getArgByName(_)]
  )
}

DataFlow::Node shouldNotBeTainted() {
  exists(DataFlow::CallCfgNode call |
    call.getFunction().asCfgNode().(NameNode).getId() = "ensure_not_tainted" and
    result in [call.getArg(_), call.getArgByName(_)]
  )
}

class TestTaintTrackingConfiguration extends TaintTracking::Configuration {
  TestTaintTrackingConfiguration() { this = "TestTaintTrackingConfiguration" }

  override predicate isSource(DataFlow::Node source) {
    source.asCfgNode().(NameNode).getId() in [
        "TAINTED_STRING", "TAINTED_BYTES", "TAINTED_LIST", "TAINTED_DICT"
      ]
    or
    source instanceof RemoteFlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    sink = shouldBeTainted()
    or
    sink = shouldNotBeTainted()
  }
}

class InlineTaintTest extends InlineExpectationsTest {
  InlineTaintTest() { this = "InlineTaintTest" }

  override string getARelevantTag() { result = "tainted" }

  override predicate hasActualResult(Location location, string element, string tag, string value) {
    exists(location.getFile().getRelativePath()) and
    exists(DataFlow::Node sink |
      any(TestTaintTrackingConfiguration config).hasFlow(_, sink) and
      location = sink.getLocation() and
      element = prettyExp(sink.asExpr()) and
      value = "" and
      tag = "tainted"
    )
  }
}

query predicate argumentToEnsureNotTaintedNotMarkedAsSpurious(
  Location location, string error, string element
) {
  error = "ERROR, you should add `SPURIOUS:` to this annotation" and
  location = shouldNotBeTainted().getLocation() and
  any(InlineTaintTest test).hasActualResult(location, element, "tainted", _) and
  exists(GoodExpectation good, ActualResult actualResult |
    good.matchesActualResult(actualResult) and
    actualResult.getLocation() = location and
    actualResult.toString() = element
  )
}

query predicate untaintedArgumentToEnsureTaintedNotMarkedAsMissing(Location location, string error) {
  error = "ERROR, you should add `# $ MISSING: tainted` annotation" and
  exists(DataFlow::Node sink |
    sink = shouldBeTainted() and
    not any(TestTaintTrackingConfiguration config).hasFlow(_, sink) and
    location = sink.getLocation() and
    not exists(FalseNegativeExpectation missingResult |
      missingResult.getLocation().getStartLine() = location.getStartLine()
    )
  )
}
