Map getTodo(int id) {
  var t = {"id": id, "title": 'Title $id', "completed": false};
  return t;
}

Future<Map> getTodoFuture(int id) {
  var t = {"id": id, "title": 'Title $id', "completed": false};
  Future<Map> f = Future<Map>.delayed(Duration(seconds: 1), () => t);
  return f;
}

void main01(List<String> args) {
  // var futureTodo = getTodoFuture(1);
  // futureTodo.then((todo) {
  //   print(todo);
  //   return getTodoFuture(todo['id'] + 1);
  // }).then((todo) {
  //   print(todo);
  //   return getTodoFuture(todo['id'] + 1);
  // }).then((todo) {
  //   print(todo);
  //   return getTodoFuture(todo['id'] + 1);
  // });
  Future<Map> futureTodo1 = getTodoFuture(1);
  Future<Map> futureTodo2 = getTodoFuture(2);
  Future<Map> futureTodo3 = getTodoFuture(3);

  List<Future<Map>> all = [futureTodo1, futureTodo2, futureTodo3];

  Future.wait(all).then((arr) => print(arr));
}

Future<Map> theTodo() async {
  Map todo1 = await getTodoFuture(1);
  print(todo1);
  Map todo2 = await getTodoFuture(2);
  print(todo2);
  // Map todo3 = await  getTodoFuture(3);
  // print(todo3);
  // return Future.value(todo3);
  return getTodoFuture(3);
}

void main(List<String> args) {
  theTodo();
}
