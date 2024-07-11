void main(List<String> args) {
  List<int> l = [1, 2, 3];
  // var l = [1, 2, 3];
  print(l);

  for (int i in l) {
    print(i);
  }

  l.add(345);
  print(l);
  l.forEach((element) {
    print(element);
  });
  l.forEach(show);

  Function(int) show2 = (p) {
    print(p);
  };

  l.forEach(show2);

  var l2 = l.map((e) => e * 2).toList();
  l2 = [for (int i in l) i * 2];

  print(l2);

  var m = {
    "name": "GAURAT",
    "firstName": "Fred",
  };
  print(m);
  print(m['name']);
  print(m['firstName']);
  print(m.entries);
  print(m.keys);
  print(m.values);

  var l3 = [];

  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      l3.add(i);
    }
  }

  print(l3);
  l3 = [
    for (int i = 0; i <= 10; i++)
      if (i % 2 == 0) i
  ];
  print(l3);
}

void show(int s) {
  print(s);
}
