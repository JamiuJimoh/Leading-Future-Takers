import 'dart:convert';
import 'dart:io';

import 'dart:math';

void main() {
  guess();
}

//? Generate a random number
//? Ask the user to input their guess
///? Check if the user's input is equal to the generated random number
//? If it is:
//?         - the user won the game
//? If it is lower:
//?         - prompt the user that it's too low and replay the game
//? If it is higher:
//?         - prompt the user that it's high low and replay the game

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
