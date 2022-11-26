import 'dart:async';

main() async {
  await for (String msg in printNumbersDownAsync(5)) {
    print(msg);
  }
}

Stream printNumbersDownAsync(int n) async* {
  int k = n;
  while (k >= 0) {
    yield await loadMessageForNumber(k--);
  }
}

Future loadMessageForNumber(int i) async {
  await new Future.delayed(new Duration(milliseconds: 50));
  if (i % 2 == 0) {
    return '$i is even';
  } else {
    return '$i is odd';
  }
}
/*
$ dart async_star.dart
5 is odd
4 is even
3 is odd
2 is even
1 is odd
0 is even
*/