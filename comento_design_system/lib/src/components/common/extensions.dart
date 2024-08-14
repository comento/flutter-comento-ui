extension IsKoreanChar on String {
  bool get isKoreanChars => RegExp(r'[가-힣]').hasMatch(this);
}
