void main(List<String> arguments) {

  /*
  TIPO NOME_VAR = VALORE
  */
  int number = 123;
  double pigreco = 3.144444;
  String word = "Hello word!!";
  bool flag = true;

  var any = "test";
  var any2 = 456;

  print("number=$number, pigreco=$pigreco, word=$word, any=$any, any2=$any2, flag=$flag");

  /*
  COSTANTI
  final|const TIPO NOME_VAR = VALORE
  */

  final int number2 = 789;
  //number2 = 89;
  const int number3 = 987;
  //number3 = 66;
  
  /*
  OPRERATORE +
  TRA NUMERI => SUM
  TRA STRINGHE => CONCAT
  */

  int sum = number + 7;
  print("sum=$sum");

  String concat = word + " :D";
  print("concat=$concat");

  /*
  ARRAY 
  List<TIPO>|var NOME_VAR = <TIPO>[VALORE]
  */
  var array1 = <int>[11, 55, 77, 22];

  print("### PRINT ARRAY ###");
  for (int i = 0; i < array1.length; i++) {
    int tmp = array1[i];
    print("array1[$i] = $tmp");
  }

  List<int> array2 = <int>[88, 55, 99, 456, 8, 45];

  print("### PRINT ARRAY ###");
  for (int i = 0; i < array2.length; i++) {
    int tmp = array2[i];
    print("array2[$i] = $tmp");
  }

  List array22 = [88, 55, "text5", 99, "text1"];

  print("### PRINT ARRAY ###");
  for (int i = 0; i < array22.length; i++) {
    var tmp = array22[i];
    print("array2[$i] = $tmp");
  }
}


class Student {

  int id = 0;
  String name = "";
  int age = 0;

  @override
  String toString() {
    return "Strudent{id=$id, name=$name, age=$age}";
  }
}