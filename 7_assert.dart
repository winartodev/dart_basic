// dart --enable-asserts 7_assert.dart
void main(List<String> args) {
  String? text = "asdf";
  assert(text != null);

  int number = 1;
  assert(number < 100);

  String urlString = "https://www.google.com";
  assert(urlString.startsWith('https'), 'URL ($urlString) should start with "https".');
}
