/// Problem 2: Çift Fibonacci sayıları
///
/// Fibonacci dizisindeki her yeni sayı, önceki 2 sayının toplamı ile oluşur.
/// 1 ve 2 ile başlayan ilk 10 sayı:
///
/// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
///
/// 4 Milyon'u aşmayacak şekilde çift olan Fibonacci sayılarınının toplamını bulunuz.

Iterable<int> fibonacci(int s0, int s1) sync* {
  yield s0;
  yield s1;
  for (;;) {
    final s2 = s0 + s1;
    yield s2;
    s0 = s1;
    s1 = s2;
  }
}

const int max = 4000000;
var toplam = fibonacci(1, 2);
Future<void> main() async {
  print(toplam
      .takeWhile((int v) => v < max)
      .where((int v) => v.isEven)
      .reduce((int a, int b) => a + b));
}
