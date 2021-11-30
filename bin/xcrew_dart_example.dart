import 'array_utility.dart';
import 'student.dart';

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

  //print("number=$number, pigreco=$pigreco, word=$word, any=$any, any2=$any2, flag=$flag");

  //print("number=" + number.toString() + ", pigreco=" + pigreco.toString() + ", word=" + word);

  /*
  COSTANTI
  final|const TIPO NOME_VAR = VALORE
  */

  final int number2 = 789;
  //number2 = 89;
 /// const int number3 = 987;
  //number3 = 66;

  /*
  OPRERATORE +
  TRA NUMERI => SUM
  TRA STRINGHE => CONCAT
  */

  int sum = number + 7;
 // print("sum=$sum");

  String concat = word + " :D";
 // print("concat=$concat");

  /*
  ARRAY 
  List<TIPO>|var NOME_VAR = <TIPO>[VALORE]
  */
  /*
  var array1 = <int>[11, 55, 77, 22];
  printArray(array1);
  List<double> array2 = <double>[88.66, 55.0, 99, 456, 8, 45];
  printArray(array2);

  array2 = List.empty();
  double m = meanOfArray(array2);
  print("m=$m");

  print("max=" + maxOfArray(array1).toString());

  List array22 = [88, 55, "a", 99, "text1"];
*/
  //printArray(array22);

  test();
}
