abstract class Figura {
  String colore = "";
  Figura({required this.colore});
  double area();
}

class Quadrato extends Figura {
  double lato = 0;

  Quadrato({required this.lato}) : super(colore: "verde");

  @override
  double area() {
    return lato * lato;
  }
}

class Cerchio extends Figura {
  double raggio = 0;

  Cerchio({required this.raggio, required String colore})
      : super(colore: colore);

  @override
  double area() {
    return raggio * raggio * 3.14;
  }
}

void main(List<String> arguments) {
  //Figura f0 = Figura();
  Figura f1 = Quadrato(lato: 4);
  Figura f2 = Cerchio(raggio: 4, colore: "arancio");

  // stampaArea(f0);
  stampaArea(f1);
  stampaArea(f2);
}

void stampaArea(Figura f) {
  print("area del ${f.runtimeType} = ${f.area()}, colore = ${f.colore}");
}
