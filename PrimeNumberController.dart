import 'dart:io';
import 'dart:math';

void main() {
  bool isFirstInput = true;
  while (true) {
    if (isFirstInput) {
      print(
          'Welcome to Prime Number Checker.\n\nPlease enter the number you want to check, or press "q" to quit:');
      isFirstInput = false;
    } else {
      stdout.write('\nPlease enter a new number, or press "q" to quit: ');
    }
    String? input = stdin.readLineSync();
    if (input == 'q') {
      break;
    }
    int number = 0;
    try {
      number = int.parse(input!);
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }
    if (number < 2) {
      print('$number is not a prime number.');
      continue;
    } else if (number == 2) {
      print('$number is a prime number.');
    } else {
      if (isPrimeNumber(number)) {
        print('$number is a prime number.');
      } else {
        print('$number is not a prime number.');
      }
    }
  }
}

bool isPrimeNumber(int number) {
  int limit = sqrt(number).ceil();
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
