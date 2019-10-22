// Challenge 1
// Write failing tests for the next two challenges

// Challenge 2
// Matrix Transpose
// Create a function that transposes a 2D matrix.
// transposeMatrix([
//  [1, 1, 1],
//  [2, 2, 2],
//  [3, 3, 3]
//    ]) ➞ [
//    [1, 2, 3],
//    [1, 2, 3],
//    [1, 2, 3]
//  ]

List transposeMatrix(List list) {
  int listLength = list.length;
  int listRowLength = list[0].length;
  List<List<dynamic>> transpose = List<List<dynamic>>(listRowLength);
  for (int i = 0; i < listRowLength; i++) {
    transpose[i] = List(listLength);
  }

  for (var i = 0; i < list.length; i++) {
    transpose[i] = List(3);
    for (var j = 0; j < list[i].length; j++) {
      transpose[i][j] = 0;
    }


    print(list);

    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        transpose[i][j] = list[j][i];
      }
    }
    return transpose;
  }
}

// Challenge 3
// Sieve of Eratosthenes
// Given N as input, return an array with all primes up to N included.
//  Examples
//  eratosthenes(10) ➞ [2, 3, 5, 7]
//  eratosthenes(20) ➞ [2, 3, 5, 7, 11, 13, 17, 19]

  bool isPrime(int number) {
    if (number < 2) {
      return false;
    }
    else if(number > 1){
      for(int i = 2; i < number; i++){
        if(number%i == 0){
          return false;
        }

      }
      return true;
    }
  }
  List eratosthenes (int number){
  List list = List<int>.generate(number, (i) => i + 1);
  List res = [];
  for (int x in list){
    if (isPrime(x) == true){
      res.add(x);
    }
  }
  return res;
}


main() {
  print(transposeMatrix([
  [1, 1, 1],
  [2, 2, 2],
  [3, 3, 3]
    ]));
  print(eratosthenes(20));
}
