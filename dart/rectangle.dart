import 'i_calc_geo.dart';

class Rectangle extends ICalcGeo {
  late int _longueur;
  late int _largeur;

  // Rectangle(int longueur, int largeur) {
  //   this._longueur = longueur;
  //   this._largeur = largeur;
  // }

  Rectangle(this._longueur, this._largeur);
  // Rectangle(int longueur, int largeur)
  //     : _longueur = longueur,
  //       _largeur = largeur;

  Rectangle.byName({longueur = 0, largeur = 0})
      : _longueur = longueur,
        _largeur = largeur;

  Rectangle.fromString(String values) {
    List<int> params = [for (String i in values.split("x")) int.parse(i)];
    var [a, b] = params;
    _longueur = a;
    _largeur = b;
  }

  int get longueur => _longueur;
  int get largeur => _largeur;

  void set longueur(int longueur) => _longueur = longueur;
  void set largeur(int largeur) => _largeur = largeur;

  @override
  String toString() {
    return "${(Rectangle).toString()} $_longueur,$_largeur";
  }

  @override
  int surface() {
    return _longueur * _largeur;
  }
}
