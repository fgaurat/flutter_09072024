void main(List<String> args) {
  int a = 0;
  int b = 2;
  try {
    int c = b ~/ a;
    print(c);
  } on UnsupportedError catch (e) {
    print(e.runtimeType);
    print(e);
  } catch (e) {
    print('Erreur');
  }
}
