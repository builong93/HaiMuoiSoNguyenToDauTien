import 'dart:io';

void main() {
  print('Nhập số lượng số nguyên tố cần in (Trong 20 số nguyên tố đầu tiên) :');
  int numbers =
      int.parse(stdin.readLineSync()!); // Bước 1 khai báo biến numbers

  int count = 0; // bước 2 khai báo biến count và gán giá trị 0

  int N = 2; // bước 3 khai báo biến N và gán giá trị 2

  while (count < numbers) {
    bool isPrime = true;
    for (int i = 2; i <= N ~/ 2; i++) {
      if (N % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print(N);
      count++;
    }
    N++;
  }
}
