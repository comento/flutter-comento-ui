extension IsKoreanChar on String {
  bool get isOnlyKoreanChars => RegExp(r'[가-힣]').hasMatch(this);
}
