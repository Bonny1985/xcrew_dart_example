class Disegnabile {
  void disegna() {}
}

abstract class Figura {
  String colore = "";
  Figura({required this.colore});
  double area();
}

class Image implements Disegnabile {
  String path=".../jhjj/image.png";

  @override
  void disegna() {
    print("disegno l'immaigne");
  }
}

class Cerchio extends Figura implements Disegnabile {
  double raggio = 0;

  Cerchio({required this.raggio, required String colore})
      : super(colore: colore);

  @override
  double area() {
    return raggio * raggio * 3.14;
  }

  @override
  void disegna() {
    print("disegno il cerchio");
  }
}

class Cilindro extends Cerchio implements Disegnabile {
  double altezza = 1;
  

  Cilindro(double raggio, {required this.altezza})
      : super(raggio: raggio, colore: "nero");

  double volume() {
    return super.area() * altezza;
  }

  @override
  void disegna() {
    print("disegno il cilindro");
  }
}

void main(List<String> arguments) {
  Cerchio c0 = Cerchio(raggio: 5, colore: 'rosa');
  c0.disegna();

  Cilindro c = Cilindro(2, altezza: 5);
  c.disegna();
  print("volume = ${c.volume()}");

  stampaArea(c);

  List<Disegnabile> lista = [];

}

void stampaArea(Figura f) {
  print("area del ${f.runtimeType} = ${f.area()}, colore = ${f.colore}");
}
