class ConstRectangle {
  final int _longueur;
  final int _largeur;

  // Rectangle(int longueur, int largeur) {
  //   this._longueur = longueur;
  //   this._largeur = largeur;
  // }

  const ConstRectangle(this._longueur, this._largeur);
  // ConstRectangle(int longueur, int largeur)
  //     : _longueur = longueur,
  //       _largeur = largeur;

  ConstRectangle.byName({longueur = 0, largeur = 0})
      : _longueur = longueur,
        _largeur = largeur;

  factory ConstRectangle.fromString(String values) {
    List<int> params = [for (String i in values.split("x")) int.parse(i)];
    var [a, b] = params;
    return ConstRectangle(a, b);
  }

  int get longueur => _longueur;
  int get largeur => _largeur;

  @override
  String toString() {
    return "${(ConstRectangle).toString()} $_longueur,$_largeur";
  }

  int surface() {
    return _longueur * _largeur;
  }
}
