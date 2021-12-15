// ignore_for_file: non_constant_identifier_names

void main() {
  List<int> numbers = [1, 2, 3, 3, 4, 5];
  // print("ARRAY");
  // print(numbers);

  //List<int> reversNum = reverseArray(numbers);
  //print(reversNum); // OUTPUT -> [5, 4, 3, 3, 2, 1]

  //reversNum = reverseArray_v2(numbers);
  //print(reversNum); // OUTPUT -> [5, 4, 3, 3, 2, 1]

  //reversNum = reverseArray_v3(numbers);
  //print(reversNum); // OUTPUT -> [5, 4, 3, 3, 2, 1]

  List<String> words = ["uno", "due", "tre"];
  //String joined = joinArray(words, "-");
  //print(joined); // OUTPUT -> "uno-due-tre"

  //joined = joinArray_v2(words, "-");
  //print(joined); // OUTPUT -> "uno-due-tre"

  //joined = joinArray_v3(words, "-");
  //print(joined); // OUTPUT -> "uno-due-tre"

  bool unique = false;
  //[1,2,3] -> true
  //[1,4,6,2,2] -> false
  //unique = isUniqueNumbers(numbers);
  //print("unique=$unique"); // OUTPUT -> false

  //unique = isUniqueNumbers([3, 5, 6, 7]);
  //print("unique=$unique"); // OUTPUT -> true

  unique = isUniqueNumbersGiuse([3, 5, 6, 7]);
  print("unique=$unique");
  unique = isUniqueNumbersGiuse([3, 5, 6, 7, 1, 6]);
  print("unique=$unique");
}

/// Ritorna una lista di numeri rovesciata
/// INPUT [1,2,3] -> OUTPUT [3,2,1]
List<int> reverseArray(List<int> list) {
  final int LEN = list.length;
  print("reverseArray LEN=$LEN");
  // valorizzo la lista con tutti zeri
  List<int> reversedList = List.generate(LEN, (index) => 0);
  int j = 0;
  // scorro la lista di partenza al contrario
  for (int i = LEN - 1; i >= 0; i--) {
    reversedList[j] = list[i];
    j++;
  }
  return reversedList;
}

List<int> reverseArray_v2(List<int> list) {
  final int LEN = list.length;
  print("reverseArray_v2 LEN=$LEN");
  List<int> reversedList = [];
  for (int i = LEN - 1; i >= 0; i--) {
    reversedList.add(list[i]);
  }
  return reversedList;
}

List<int> reverseArray_v3(List<int> inputList) {
  print("reverseArray_v3");
  return List.generate(
      inputList.length, (index) => inputList[inputList.length - index - 1]);
}

int a = 3, b = 6;
int c = a + b;

String aa = "a", bb = "b";
String cc = aa + bb; //>>>> "ab"

/// Ritorna una stringa che rapresenta l'unione (concatenazione)
/// di tutte le stringhe contenute nell'array
String joinArray(List<String> list, String separator) {
  String result = "";
  final int LEN = list.length;
  print("joinArray LEN=$LEN");
  for (int i = 0; i < LEN; i++) {
    result = result + list[i] + separator;
  }
  return result;
}

String joinArray_v2(List<String> list, String separator) {
  String result = "";
  final int LEN = list.length;
  print("joinArray_v2 LEN=$LEN");
  for (int i = 0; i < LEN; i++) {
    result = result + list[i];
    if (i < LEN - 1) {
      result = result + separator;
    }
  }
  return result;
}

String joinArray_v3(List<String> inputList, String separator) {
  print("joinArray_v3");
  return inputList.join(separator);
}

/// Ritorna true se la lista contiene tutti numeri diversi fra loro
/// false se trova almeno un doppione
bool isUniqueNumbers(List<int> list) {
  print("isUniqueNumbers");
  print(list);
  bool trovato = false; // default
  int tmp = 0;
  int i = 0;
  int j = 0;
  final int LEN = list.length;
  while (i < LEN && trovato == false) {
    tmp = list[i];
    j = i + 1;
    print("j=$j");
    while (j < LEN && !trovato) {
      if (tmp == list[j]) {
        trovato = true;
      }
      j++;
    }
    i++;
  }
  return trovato ? false : true;
  //return !trovato;
}

bool isUniqueNumbersGiuse(List<int> list) {
  print("isUniqueNumbersGiuse");
  bool found = false; // default
  list.sort();
  int i = 0;
  while (i < list.length - 1 && !found) {
    found = list[i] == list[i + 1] ? true : false;
    i++;
  }
  return !found;
}
