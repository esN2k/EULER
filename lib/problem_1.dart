// ignore_for_file: unused_local_variable, avoid_print, unused_import
import 'package:more/collection.dart';

const int max = 1000;
var integerRange = IntegerRange(max);
void main(List<String> args) {
  print(integerRange
      .where((x) => x % 3 == 0 || x % 5 == 0)
      .reduce((a, b) => a + b));
}
