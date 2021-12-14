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

  List<Figura> lista = [];

  Figura f0 = Figura();
  lista.add(f0);
  print("area figura = ${f0.area()}");

  Figura f1 = Quadrato(lato: 4);
  lista.add(f1);
  print("area quadrato = ${f1.area()}");

  Figura f2 = Cerchio(raggio: 4);
  lista.add(f2);
  print("area cerchio = ${f2.area()}");

  for (Figura f in lista) {
    stampaArea(f);
  }

}

void stampaArea(Figura f) {
  print("area del ${f.runtimeType} = ${f.area()}");
}
