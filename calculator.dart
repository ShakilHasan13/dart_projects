import 'dart:io';

void main(List<String> args) {
  stdout.write('Enter First Number: ');
  var num1 = stdin.readLineSync();
  stdout.write('Enter Second Number: ');
  var num2 = stdin.readLineSync();
  stdout.write(
      'To addition, enter : +, \n To subtraction, enter : - \n To multiply, enter : * \n To divide, enter : / \n');
  var operator = stdin.readLineSync();
  var result = 0.0;

  if (operator == '+') {
    result = (double.tryParse(num1 ?? '0') ?? 0) +
        (double.tryParse(num2 ?? '0') ?? 0);
  } else if (operator == '-') {
    result = (double.tryParse(num1 ?? '0') ?? 0) -
        (double.tryParse(num2 ?? '0') ?? 0);
  } else if (operator == '*') {
    result = (double.tryParse(num1 ?? '0') ?? 0) *
        (double.tryParse(num2 ?? '0') ?? 0);
  } else if (operator == '/') {
    result = (double.tryParse(num1 ?? '0') ?? 0) /
        (double.tryParse(num2 ?? '0') ?? 0);
  } else {
    print('Enter valid operator');
  }
  print("Result = $result");
}
