/** Definitions related to the Apache Commons Lang library. */

import java
private import semmle.code.java.dataflow.FlowSteps
private import semmle.code.java.dataflow.ExternalFlow

/**
 * The class `org.apache.commons.lang.RandomStringUtils` or `org.apache.commons.lang3.RandomStringUtils`.
 */
class TypeApacheRandomStringUtils extends Class {
  TypeApacheRandomStringUtils() {
    this.hasQualifiedName(["org.apache.commons.lang", "org.apache.commons.lang3"],
      "RandomStringUtils")
  }
}

/**
 * The method `deserialize` in either `org.apache.commons.lang.SerializationUtils`
 * or `org.apache.commons.lang3.SerializationUtils`.
 */
class MethodApacheSerializationUtilsDeserialize extends Method {
  MethodApacheSerializationUtilsDeserialize() {
    this.getDeclaringType()
        .hasQualifiedName(["org.apache.commons.lang", "org.apache.commons.lang3"],
          "SerializationUtils") and
    this.hasName("deserialize")
  }
}

/**
 * Taint-propagating models for `ArrayUtils`.
 */
private class ApacheArrayUtilsModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3;ArrayUtils;false;add;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(java.lang.Object[],java.lang.Object);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(boolean[],boolean);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(byte[],byte);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(char[],char);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(double[],double);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(float[],float);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(int[],int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(long[],long);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;add;(short[],short);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;addAll;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;addFirst;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;clone;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;get;(java.lang.Object[],int,java.lang.Object);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;get;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;insert;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;insert;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;insert;;;Argument[3];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;nullToEmpty;(java.lang.Object[],java.lang.Class);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;nullToEmpty;(java.lang.String[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;remove;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;removeAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;removeAllOccurences;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;removeAllOccurrences;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;removeElement;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;removeElements;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;subarray;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;toArray;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;toMap;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;toObject;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;ArrayUtils;false;toPrimitive;;;Argument[0..1];ReturnValue;taint"
      ]
  }
}

private class ApacheStringUtilsModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3;StringUtils;false;abbreviate;(java.lang.String,java.lang.String,int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;abbreviate;(java.lang.String,java.lang.String,int,int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;abbreviate;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;abbreviateMiddle;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;abbreviateMiddle;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;appendIfMissing;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;appendIfMissing;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;appendIfMissingIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;appendIfMissingIgnoreCase;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;capitalize;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;center;(java.lang.String,int,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;center;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;chomp;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;chomp;(java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;chop;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;defaultIfBlank;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;defaultIfEmpty;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;defaultString;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;deleteWhitespace;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;difference;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;firstNonBlank;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;firstNonEmpty;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;getBytes;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;getCommonPrefix;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;getDigits;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;getIfBlank;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;getIfEmpty;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(char[],char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(char[],char,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Iterable,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Iterable,java.lang.String);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[],char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[],char,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[],java.lang.String);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[],java.lang.String,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.lang.Object[],java.lang.String,int,int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.util.Iterator,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.util.Iterator,java.lang.String);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.util.List,char,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.util.List,java.lang.String,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;join;(java.util.List,java.lang.String,int,int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;joinWith;;;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;left;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;leftPad;(java.lang.String,int,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;leftPad;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;lowerCase;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;lowerCase;(java.lang.String,java.util.Locale);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;mid;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;normalizeSpace;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;overlay;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;overlay;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;prependIfMissing;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;prependIfMissing;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;prependIfMissingIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;prependIfMissingIgnoreCase;;;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;remove;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeEnd;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeEndIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeFirst;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removePattern;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeStart;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;removeStartIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;repeat;(java.lang.String,java.lang.String,int);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;repeat;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replace;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replace;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceAll;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceChars;(java.lang.String,java.lang.String,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceChars;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceEach;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceEach;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceEachRepeatedly;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceEachRepeatedly;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceFirst;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceFirst;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceIgnoreCase;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceOnce;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceOnce;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceOnceIgnoreCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replaceOnceIgnoreCase;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replacePattern;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;replacePattern;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;reverse;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;reverseDelimited;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;right;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;rightPad;(java.lang.String,int,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;rightPad;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;rotate;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;split;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;split;(java.lang.String,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;split;(java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;split;(java.lang.String,java.lang.String,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitByCharacterType;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitByCharacterTypeCamelCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitByWholeSeparator;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitByWholeSeparatorPreserveAllTokens;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitPreserveAllTokens;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitPreserveAllTokens;(java.lang.String,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitPreserveAllTokens;(java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;splitPreserveAllTokens;(java.lang.String,java.lang.String,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;strip;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;strip;(java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripAccents;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripEnd;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripStart;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripToEmpty;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;stripToNull;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substring;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringAfter;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringAfterLast;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringBefore;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringBeforeLast;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringBetween;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;substringsBetween;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;swapCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;toCodePoints;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;toEncodedString;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;toRootLowerCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;toRootUpperCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;toString;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;trim;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;trimToEmpty;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;trimToNull;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;truncate;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;uncapitalize;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;unwrap;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;upperCase;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;upperCase;(java.lang.String,java.util.Locale);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;valueOf;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;wrap;(java.lang.String,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;wrap;(java.lang.String,java.lang.String);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;wrapIfMissing;(java.lang.String,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;StringUtils;false;wrapIfMissing;(java.lang.String,java.lang.String);;Argument[0..1];ReturnValue;taint"
      ]
  }
}

private class ApacheStrBuilderModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.text;StrBuilder;false;StrBuilder;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.CharSequence);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.CharSequence,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.nio.CharBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(java.nio.CharBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;(org.apache.commons.lang3.text.StrBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;append;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendAll;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendFixedWidthPadLeft;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendFixedWidthPadLeft;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendFixedWidthPadRight;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendFixedWidthPadRight;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendSeparator;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendSeparator;(java.lang.String,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendSeparator;(java.lang.String,java.lang.String);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendSeparator;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendTo;;;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendWithSeparators;;;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendWithSeparators;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;(org.apache.commons.lang3.text.StrBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;appendln;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;asReader;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;asTokenizer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;build;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;getChars;(char[]);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;getChars;(char[]);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;getChars;(int,int,char[],int);;Argument[-1];Argument[2];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;insert;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;insert;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;leftString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;midString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;readFrom;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replace;(int,int,java.lang.String);;Argument[2];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replace;(org.apache.commons.lang3.text.StrMatcher,java.lang.String,int,int,int);;Argument[1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replace;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replaceAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replaceAll;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replaceFirst;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;replaceFirst;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrBuilder;false;rightString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;subSequence;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;substring;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;toCharArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;toStringBuffer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrBuilder;false;toStringBuilder;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;StrBuilder;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.CharSequence);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.CharSequence,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.nio.CharBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(java.nio.CharBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;(org.apache.commons.text.StrBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;append;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendAll;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendFixedWidthPadLeft;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendFixedWidthPadLeft;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendFixedWidthPadRight;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendFixedWidthPadRight;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendSeparator;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendSeparator;(java.lang.String,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendSeparator;(java.lang.String,java.lang.String);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendSeparator;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendTo;;;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StrBuilder;false;appendWithSeparators;;;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendWithSeparators;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;(org.apache.commons.text.StrBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;appendln;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;asReader;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;asTokenizer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;build;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;getChars;(char[]);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StrBuilder;false;getChars;(char[]);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;getChars;(int,int,char[],int);;Argument[-1];Argument[2];taint",
        "org.apache.commons.text;StrBuilder;false;insert;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;insert;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;leftString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;midString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;readFrom;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;replace;(int,int,java.lang.String);;Argument[2];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;replace;(org.apache.commons.text.StrMatcher,java.lang.String,int,int,int);;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;replace;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;replaceAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;replaceAll;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;replaceFirst;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;replaceFirst;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;StrBuilder;false;rightString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;subSequence;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;substring;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;toCharArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;toStringBuffer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrBuilder;false;toStringBuilder;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;TextStringBuilder;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;TextStringBuilder;(java.lang.CharSequence);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.CharSequence);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.CharSequence,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.nio.CharBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(java.nio.CharBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;(org.apache.commons.text.TextStringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;append;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendAll;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendFixedWidthPadLeft;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendFixedWidthPadLeft;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendFixedWidthPadRight;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendFixedWidthPadRight;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendSeparator;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendSeparator;(java.lang.String,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendSeparator;(java.lang.String,java.lang.String);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendSeparator;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendTo;;;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendWithSeparators;;;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendWithSeparators;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(char[],int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.String,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.String,java.lang.Object[]);;Argument[0..1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.StringBuffer);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.StringBuffer,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.StringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(java.lang.StringBuilder,int,int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;(org.apache.commons.text.TextStringBuilder);;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;appendln;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;asReader;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;asTokenizer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;build;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;getChars;(char[]);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;TextStringBuilder;false;getChars;(char[]);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;getChars;(int,int,char[],int);;Argument[-1];Argument[2];taint",
        "org.apache.commons.text;TextStringBuilder;false;insert;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;insert;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;leftString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;midString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;readFrom;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;replace;(int,int,java.lang.String);;Argument[2];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;replace;(org.apache.commons.text.matcher.StringMatcher,java.lang.String,int,int,int);;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;replace;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;replaceAll;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;replaceAll;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;replaceFirst;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;replaceFirst;;;Argument[1];Argument[-1];taint",
        "org.apache.commons.text;TextStringBuilder;false;rightString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;subSequence;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;substring;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;toCharArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;toStringBuffer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;TextStringBuilder;false;toStringBuilder;;;Argument[-1];ReturnValue;taint"
      ]
  }
}

/**
 * Taint-propagating models for `WordUtils`.
 */
private class ApacheWordUtilsModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.text;WordUtils;false;wrap;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;wrap;(java.lang.String,int,java.lang.String,boolean);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;wrap;(java.lang.String,int,java.lang.String,boolean,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;uncapitalize;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;uncapitalize;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;swapCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;capitalize;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;capitalize;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;initials;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;initials;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;capitalizeFully;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;WordUtils;false;capitalizeFully;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;wrap;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;wrap;(java.lang.String,int,java.lang.String,boolean);;Argument[2];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;wrap;(java.lang.String,int,java.lang.String,boolean,java.lang.String);;Argument[2];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;uncapitalize;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;uncapitalize;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;swapCase;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;capitalize;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;capitalize;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;abbreviate;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;abbreviate;;;Argument[3];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;initials;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;initials;(java.lang.String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;capitalizeFully;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;WordUtils;false;capitalizeFully;(java.lang.String,char[]);;Argument[0];ReturnValue;taint"
      ]
  }
}

/**
 * Taint-propagating models for `StrTokenizer`.
 */
private class ApacheStrTokenizerModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.text;StrTokenizer;false;StrTokenizer;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;clone;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;reset;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;reset;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;next;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;getContent;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;previous;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;getTokenList;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;getTokenArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;previousToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;nextToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;getTSVInstance;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrTokenizer;false;getCSVInstance;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;StrTokenizer;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrTokenizer;false;clone;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;reset;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;reset;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StrTokenizer;false;next;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;getContent;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;previous;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;getTokenList;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;getTokenArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;previousToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;nextToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;getTSVInstance;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StrTokenizer;false;getCSVInstance;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;StringTokenizer;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StringTokenizer;false;clone;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;reset;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;reset;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StringTokenizer;false;next;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;getContent;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;previous;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;getTokenList;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;getTokenArray;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;previousToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;nextToken;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;getTSVInstance;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringTokenizer;false;getCSVInstance;;;Argument[0];ReturnValue;taint"
      ]
  }
}

/**
 * Taint-propagating models for `StrLookup`.
 */
private class ApacheStrLookupModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.text;StrLookup;false;lookup;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrLookup;false;mapLookup;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.text.lookup;StringLookup;true;lookup;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text.lookup;StringLookupFactory;false;mapStringLookup;;;Argument[0];ReturnValue;taint"
      ]
  }
}

/**
 * Taint-propagating models for `StrSubstitutor`.
 */
private class ApacheStrSubstitutorModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.text;StrSubstitutor;false;StrSubstitutor;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.Object);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(char[],int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.CharSequence);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.CharSequence,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(org.apache.commons.lang3.text.StrBuilder);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.StringBuffer);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.StringBuffer,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.String,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(org.apache.commons.lang3.text.StrBuilder,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.Object,java.util.Map);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.Object,java.util.Map,java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.Object,java.util.Map,java.lang.String,java.lang.String);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replace;(java.lang.Object,java.util.Properties);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;setVariableResolver;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(org.apache.commons.lang3.text.StrBuilder);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(java.lang.StringBuffer);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(java.lang.StringBuffer,int,int);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(java.lang.StringBuilder);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(java.lang.StringBuilder,int,int);;Argument[-1];Argument[0];taint",
        "org.apache.commons.lang3.text;StrSubstitutor;false;replaceIn;(org.apache.commons.lang3.text.StrBuilder,int,int);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;StringSubstitutor;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.Object);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(char[],int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.CharSequence);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.CharSequence,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.StringBuffer);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.StringBuffer,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.String,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.Object,java.util.Map);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.Object,java.util.Map,java.lang.String,java.lang.String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.Object,java.util.Map,java.lang.String,java.lang.String);;Argument[1];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(java.lang.Object,java.util.Properties);;Argument[0..1];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(org.apache.commons.text.TextStringBuilder);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;replace;(org.apache.commons.text.TextStringBuilder,int,int);;Argument[0];ReturnValue;taint",
        "org.apache.commons.text;StringSubstitutor;false;setVariableResolver;;;Argument[0];Argument[-1];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(java.lang.StringBuffer);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(java.lang.StringBuffer,int,int);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(java.lang.StringBuilder);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(java.lang.StringBuilder,int,int);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(org.apache.commons.text.TextStringBuilder);;Argument[-1];Argument[0];taint",
        "org.apache.commons.text;StringSubstitutor;false;replaceIn;(org.apache.commons.text.TextStringBuilder,int,int);;Argument[-1];Argument[0];taint"
      ]
  }
}

/**
 * Taint-propagating models for `RegexUtils`.
 */
private class ApacheRegExUtilsModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3;RegExUtils;false;removeAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;removeFirst;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;removePattern;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replaceAll;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replaceFirst;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replacePattern;;;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replaceAll;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replaceFirst;;;Argument[2];ReturnValue;taint",
        "org.apache.commons.lang3;RegExUtils;false;replacePattern;;;Argument[2];ReturnValue;taint"
      ]
  }
}

/**
 * Taint-propagating models for `ObjectUtils`.
 */
private class ApacheObjectUtilsModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        // Note all the functions annotated with `taint` flow really should have `value` flow,
        // but we don't support value-preserving varargs functions at the moment.
        "org.apache.commons.lang3;ObjectUtils;false;clone;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;cloneIfPossible;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;CONST;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;CONST_BYTE;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;CONST_SHORT;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;defaultIfNull;;;Argument[0..1];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;firstNonNull;;;ArrayElement of Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;getIfNull;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;max;;;ArrayElement of Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;median;;;ArrayElement of Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;min;;;ArrayElement of Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;mode;;;ArrayElement of Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;requireNonEmpty;;;Argument[0];ReturnValue;value",
        "org.apache.commons.lang3;ObjectUtils;false;toString;(Object,String);;Argument[1];ReturnValue;value"
      ]
  }
}

private class ApacheToStringBuilderModel extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.lang3.builder;ToStringBuilder;false;toString;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.Object);;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.Object);;Argument;Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.Object[]);;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.Object[]);;Argument;Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[]);;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[]);;Argument;Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,boolean);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,boolean);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object);;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object);;Argument;Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[],boolean);;Argument[0];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[],boolean);;Argument[0];Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[],boolean);;Argument[1];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;(java.lang.String,java.lang.Object[],boolean);;Argument[1];Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;build;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;getStringBuffer;;;Argument[-1];ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendToString;;;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendToString;;;Argument;Argument[-1];taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendSuper;;;Argument;ReturnValue;taint",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendSuper;;;Argument;Argument[-1];taint",
        // The following are value-preserving steps for fluent methods:
        "org.apache.commons.lang3.builder;ToStringBuilder;false;append;;;Argument[-1];ReturnValue;value",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendAsObjectToString;;;Argument[-1];ReturnValue;value",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendSuper;;;Argument[-1];ReturnValue;value",
        "org.apache.commons.lang3.builder;ToStringBuilder;false;appendToString;;;Argument[-1];ReturnValue;value"
      ]
  }
}
