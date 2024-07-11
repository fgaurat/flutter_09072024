import 'rectangle.dart';

class Carre extends Rectangle {
  int _cote = 0;

  Carre(cote)
      : _cote = cote,
        super(cote, cote);

  int get cote => _cote;
  void set cote(int cote) {
    super.longueur = cote;
    super.largeur = cote;
    _cote = cote;
  }

  @override
  String toString() {
    return "${this.runtimeType} cote:$_cote";
  }
}
