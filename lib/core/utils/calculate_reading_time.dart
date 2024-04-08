int calculateReadingTime(String content) {
  final wordCount = content.split(RegExp(r'\s+')).length;
  const averageReadingSpeed = 225;
  final readingTime = wordCount / averageReadingSpeed;

  return readingTime.ceil();
}
