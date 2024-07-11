void main(List<String> args) {
  print("Hello");
  int a = 3;
  print("value $a");
  print('value $a');

  var b = 3;
  print('value b:$b');
  b = 12;
  print('value b:$b');

  const c = "toto";
  print(c);
  // c = "tutu";
  // print(c);

  final d;

  d = "valeur de d";
  print(d);
  // d = "réinit";
  // print(d);

  printInteger(12);

  a = add(2, 3);
  print(a);
  a = add2(value2: 3, value1: 3);
  print(a);

  a = add3(value2: 3, value1: 3);
  print(a);
}

void printInteger(int a) {
  print("a: $a");
}

int add(int a, int b) {
  return a + b;
}

int add2({int? value1, int? value2}) {
  return value1! + value2!;
}

int add3({int value1 = 0, int value2 = 0}) {
  return value1 + value2;
}
