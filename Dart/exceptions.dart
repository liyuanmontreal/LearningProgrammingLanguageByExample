//
class FoodSpoiledError extends StateError {
  FoodSpoiledError(String msg) : super(msg);
}

class Potato {
  int age;

  Potato(this.age);

  String peel() {
    if (age > 4) {
      throw new FoodSpoiledError('your potato is spoiled');
    }
    return "peeled";
  }
}

main() {
  var p = new Potato(7);

  try {
    p.peel();
  } on FoodSpoiledError catch(_) {
    print("nope nope nope");
  }

  // any non-null object can be thrown:
  try {
    throw("potato");
  } catch(_) {
    print("caught a flying potato");
  }

  // exceptions halt excecution
  p.peel();
  print('not reached');
}

/*
$ dart exceptions.dart
nope nope nope
caught a flying potato
Unhandled exception:
Bad state: your potato is spoiled
#0      Potato.peel (file:///exceptions.dart:13:7)
#1      main (file:///exceptions.dart:36:5)
#2      _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:261)
#3      _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:148)
*/