import 'dart:io';
import 'dart:math';

const welcomeMessage =
    'Welcome to Prime Number Checker.\n\nPlease enter the number you want to check, or press "q" to quit:';
const promptMessage = '\nPlease enter a new number, or press "q" to quit: ';

void main() {
  bool isFirstTimeRunning = true;

  while (true) {
    if (isFirstTimeRunning) {
      // Print welcome message only once
      print(welcomeMessage);
      isFirstTimeRunning = false;
    } else {
      // Print prompt message for subsequent runs
      stdout.write(promptMessage);
    }

    String? input = readInput();
    if (input == 'q') {
      // Exit if user enters 'q'
      break;
    }

    int number;
    try {
      number = parseInput(input);
    } catch (e) {
      print(e.toString());
      continue;
    }

    if (number < 2) {
      // Check for invalid input
      print('$number is not a prime number.');
      continue;
    } else if (number == 2) {
      // Check for prime number
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

String? readInput() {
  // Get input from user
  return stdin.readLineSync();
}

int parseInput(String? input) {
  // Parse input to integer
  try {
    return int.parse(input!);
  } catch (e) {
    // Throw an error if input cannot be parsed
    throw FormatException('Invalid input: $input');
  }
}

bool isPrimeNumber(int number) {
  // Check if the given number is divisible by any number up to its square root
  final limit = sqrt(number).ceil();
  for (int i = 2; i <= limit; i++) {
    if (number % i == 0) {
      // If the given number is divisible by i, it is not a prime number
      return false;
    }
  }
  // If the given number is not divisible by any number up to its square root, it is a prime number
  return true;
}
