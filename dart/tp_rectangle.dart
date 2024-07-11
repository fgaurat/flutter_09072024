import 'carre.dart';
import 'rectangle.dart';

void main(List<String> args) {
  Rectangle r = Rectangle(2, 3);
  print(r.largeur);
  print(r.longueur);
  r.longueur = 12;
  print(r.longueur);
  Rectangle r1 = Rectangle.byName(longueur: 12, largeur: 15);
  print(r1.longueur);
  print(r1.largeur);

  Rectangle r2 = Rectangle.fromString("15x12");
  print(r2);
  print(r2.surface());

  Carre c = new Carre(2);
  print(c.surface());
  c.cote = 12;
  print(c.surface());
}
