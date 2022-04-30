/// Problem 1: 3 ve 5'in katları
///
/// Örnek olarak 10'dan küçük 3 veya 5'in katları olan
/// doğal sayıları sıralamak istersek:
/// 3, 5, 6, 9 sayılarını elde ediyoruz.
/// Bu sayıların toplamları da 23 yapar.
///
/// 1000'den küçük 3 veya 5'in katlarınının toplamını bulunuz.

import 'package:more/collection.dart';

const int max = 1000;
var integerRange = IntegerRange(max);
void main(List<String> args) {
  print(integerRange
      .where((x) => x % 3 == 0 || x % 5 == 0)
      .reduce((a, b) => a + b));
}
