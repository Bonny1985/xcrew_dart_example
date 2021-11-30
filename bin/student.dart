import 'dart:math';

class Student {
  // matricola studente
  int id = 0;

  // nome
  String name = "";

  // età
  int age = 0;

  // esami sostenuti
  List<Exam> exams = [];

  // calcola la media ponderata degli esami
  double calcAverage() {
    double sum = 0;
    for (int i = 0; i < exams.length; i++) {
      Exam e = exams[i];
      sum = sum + e.vote;
    }
    return sum / exams.length;
  }

  @override
  String toString() {
    double avg = calcAverage();
    return "Strudent{id=$id, name=$name, age=$age, avegage=$avg}";
  }
}

class Exam {
  /// crediti formativi
  int cfu = 0;

  /// Codice corso
  String code = "";

  /// voto finale
  int vote = 0;

  // Data
  late DateTime date;

  @override
  String toString() {
    return "Exam{cfu=$cfu, code=$code, date=$date, vote=$vote}";
  }
}

void test() {
  List<Student> students = [];

  for (int i = 1; i <= 5; i++) {

    Student s = Student();
    s.id = i;
    s.age = Random().nextInt(70);
    s.name = "Mario Rossi $i";

    for (int j = 1; j < 5; j++) {
      Exam e = Exam();
      e.code = "ABC$i";
      e.date = DateTime.now();
      e.vote = Random().nextInt(29) + 1;

      /// da rendere dinamico per media ponderata
      /// se resta statico è una media aritmetica
      e.cfu = 6;

      // aggiungo l'esame alla lista si s
      s.exams.add(e);
    }

    students.add(s);
  }

  for (int i = 0; i < students.length; i++) {
    Student s = students[i];
    print(s.toString());
    for (int j = 0; j < s.exams.length; j++) {
      Exam e = s.exams[j];
      print(" " + e.toString());
    }
  }
}
