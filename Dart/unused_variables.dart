main() {
  for (var i in new Iterable.generate(1)) {
    print('not using "i"');
  }

  // using an underscore silences "local variable is not used"
  // warnings when running dartanalyzer
  for (var _ in new Iterable.generate(1)) {
    print('no warnings');
  }
}

/*
$ dartanalyzer web/examples/unnamed_parameters/unnamed_parameters.dart 
[hint] The value of the local variable 'i' is not used (unnamed_parameters.dart, line 2, col 12)
1 hint found.
*/