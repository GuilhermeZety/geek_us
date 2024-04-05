class StringUtils {
  static ({String right, String highlight, String left}) getRichHighlightText(String allSentence, String textToHighlight) {
    var leftRich = allSentence.substring(0, allSentence.indexOf(textToHighlight));

    var rightRich = allSentence.substring(allSentence.indexOf(textToHighlight)).replaceAll(textToHighlight, '');
    return (left: leftRich, highlight: textToHighlight, right: rightRich);
  }
}
