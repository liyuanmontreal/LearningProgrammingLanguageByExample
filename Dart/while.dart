main() {
  var i = 0;

  // while conditions are evaluated before the loop
  while(i++ < 2) {
    print("while $i");
  }

  var j = 0;

  // do-while conditions are evaluated after the loop
  do {
    print("dowhile $j");
  } while (j++ < 2);
}

/*
$ dart while.dart
while 1
while 2
dowhile 0
dowhile 1
dowhile 2
*/