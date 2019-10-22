import "package:test/test.dart";
import 'main.dart';

void main() {


  test(
    "eratosthenes sieve",
    () {
      expect(eratosthenes(10), [2, 3, 5, 7]);
    },
  );
  test(
    "Transpose matrixes",
        () {
      expect(transposeMatrix([
        [1, 1, 1],
        [2, 2, 2],
        [3, 3, 3]
      ]), [[1, 2, 3], [1, 2, 3], [1, 2, 3]]);
    },
  );
}
