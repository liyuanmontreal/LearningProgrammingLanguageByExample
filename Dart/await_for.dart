import 'dart:async';

main() async {
  await for (int i in numbersDownFrom(5)) {
    print('$i bottles of beer');
  }
}

Stream numbersDownFrom(int n) async* {
  while (n >= 0) {
    await new Future.delayed(new Duration(milliseconds: 100));
    yield n--;
  }
}

/*
$ dart await_for.dart
5 bottles of beer
4 bottles of beer
3 bottles of beer
2 bottles of beer
1 bottles of beer
0 bottles of beer
*/