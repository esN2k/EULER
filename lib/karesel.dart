// import 'dart:math';

/// 1000'den küçük Üçgensel sayıyıları bulunuz.
/// 2'nin katını kullanmayı bilmiyorum. Çözünce devam edeceğim.

Iterable<int> ucgen(int s0, int s1) sync* {
  for (;;) {
    final s2 = s1; // final s2 = s1 + pow(2, s0);
    yield s2;
    s0 = s0 + 1;
    s1 = s1 + 1;
  }
}

const int max = 3;
var toplam = ucgen(0, 0);

void main() async {
  print(toplam.takeWhile((int value) => value <= max));
}
