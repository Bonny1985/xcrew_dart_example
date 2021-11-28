/// Funzione che permette di stampare a video
/// gli elementi di un array
void printArray(List<dynamic> array) {
  print("### PRINT ARRAY ###");
  for (int i = 0; i < array.length; i++) {
    var tmp = array[i].toString();
    print("a[$i] = $tmp");
  }
}

/// Funzione che permette di calcolare la media di un insieme di numeri
double meanOfArray(List<double> numbers) {

  double mean = 0;
  final int length = numbers.length;

  if (length > 0) {
 
    double sum = 0;
    int i = 0;

    while (i < length) {
      sum = sum + numbers[i];
      i = i + 1;
    }
    
    mean = sum / length;
  }

  return mean;
}

/// Funzione che permette di trovare il numero più
/// grande in un array di numeri
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
