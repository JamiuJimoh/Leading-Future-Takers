import 'dart:convert';
import 'dart:io';

import 'dart:math';

void main() {
  guess();
}

void guess() {
  print('*************************************');
  print('Welcome to the guess game');
  print('*************************************');

  var randomNumber = Random().nextInt(101) + 1;
  var won = false;
  while (!won) {
    print('Guess the number 😁');
    final input = stdin.readLineSync(encoding: utf8)?.trim();
    final parsedInput = int.tryParse(input!);
    if (parsedInput == randomNumber) won = true;
    if (randomNumber > parsedInput!) {
      print('Oops, too low...guess higher🤦‍♂️');
      print('');
    } else if (randomNumber < parsedInput) {
      print('Oops, too high...guess lower🤦‍♂️');
      print('');
    } else {
      print('Yay, you guessed right🥳');
      print('');
    }
  }
}
