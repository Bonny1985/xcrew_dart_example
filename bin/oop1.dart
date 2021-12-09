class Figura {
  double area() {
    return -1;
  }
}

class Quadrato extends Figura {
  double lato = 0;

  Quadrato({required this.lato});

  @override
  double area() {
    return lato * lato;
  }
}

class Cerchio extends Figura {
  double raggio = 0;

  Cerchio({required this.raggio});

  @override
  double area() {
    return raggio * raggio * 3.14;
  }
}

void main(List<String> arguments) {
  Figura f0 = Figura();
  print("area figura = ${f0.area()}");
  Figura f1 = Quadrato(lato: 4);
  print("area quadrato = ${f1.area()}");
  Figura f2 = Cerchio(raggio: 4);
  print("area cerchio = ${f2.area()}");

  stampaArea(f0);
  stampaArea(f1);
  stampaArea(f2);
}

void stampaArea(Figura f) {
  print("area del ${f.runtimeType} = ${f.area()}");
}
