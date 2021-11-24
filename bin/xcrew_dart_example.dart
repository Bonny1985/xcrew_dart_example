void main(List<String> arguments) {
  /*
  TIPO NOME_VAR = VALORE
  */
  int number = 123;
  String word = "Hello word!!";
  bool flag = true;

  var any = "test";
  var any2 = 456;

  print("number=$number, word=$word, any=$any, any2=$any2, flag=$flag");

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
  COSTANTI
  final|const TIPO NOME_VAR = VALORE
  */

  final int number2 = 789;
  //number2 = 89;
  const int number3 = 987;
  //number3 = 66;

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
  int max = maxOfArray(array1);
  print("max=$max");

  List<int> array2 = <int>[88, 55, 99];

  print("### PRINT ARRAY ###");
  for (int i = 0; i < array2.length; i++) {
    int tmp = array2[i];
    print("array2[$i] = $tmp");
  }

  List array3 = [88, 55, 99];

  print("### PRINT ARRAY ###");
  for (int i = 0; i < array3.length; i++) {
    int tmp = array3[i];
    print("array3[$i] = $tmp");
  }

  List array22 = [88, 55, "text5", 99, "text1"];
  printArray(array22);
}

void printArray(List<dynamic> a) {
  print("### PRINT ARRAY ###");
  for (int i = 0; i < a.length; i++) {
    var tmp = a[i].toString();
    print("a[$i] = $tmp");
  }
}

int maxOfArray(List<int> numbers) {
  int max = 0;

  if (numbers.isNotEmpty) {
    // equal to: numbers.length > 0

    max = numbers[0];

    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
  }

  return max;
}
