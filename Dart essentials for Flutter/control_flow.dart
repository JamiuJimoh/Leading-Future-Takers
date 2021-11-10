// *******************************************
//? if, else and else if
// *******************************************

void main() {
  // controlFlow();
  // forLoops();
  // whileLoops();
  // switchStatement();
}

var num1 = 9;
var num2 = 9;

//! if statements can't be used outside a function
void controlFlow() {
  // if (num1 < num2) {
  //   print('Number 1 is lesser than number 2');
  // }

  // if (num1 < num2) {
  //   print('Number 1 is lesser than number 2');
  // } else {
  //   print('Number 1 is greater than number 2');
  // }

  if (num1 < num2) {
    print('Number 1 is lesser than number 2');
  } else if (num1 == num2) {
    print('Number 1 is equal to number 2');
  } else {
    print('Number 1 is greater than number 2');
  }
}

// ***************  LOOPS  *******************

// *******************************************
//? For loops
// *******************************************
//!for in loops

void forLoops() {
// var numm = 9;
  // for (var i = 0; i < numm; i++) {
  //   print(i);
  // }
  // for (var i = numm; i >= 1; i--) {
  //   print(i);
  // }

  // var collection = ['Jamiu', 'Jimoh', 'Sergio'];
  // for (var i = 0; i < collection.length; i++) {
  //   print(collection[i]);
  // }
}

// *******************************************
//? While and do-while loops
// *******************************************

void whileLoops() {
  // while (true) { //! infinite loop
  //   print('Hello');
  // }

  // var whileNum = 10;

  // while (whileNum > 0) {
  //   print(whileNum);
  //   whileNum--;
  // }

  // var collection = ['Jamiu', 'Jimoh', 'Sergio'];
  // var count = 0;
  // while (count < collection.length) {
  //   print(collection[count]);
  //   count++;
  // }

  // do {
  //   print(collection[count]);
  //   count++;
  // } while (count < collection.length);
}

// *******************************************
//? Switch statements
// *******************************************

// void switchStatement() {
//   var command = 'Wednesday';

//   switch (command) {
//     case 'Monday':
//       print('It\'s Monday');
//       break;
//     case 'Tuesday':
//       print('It\'s Tuesday');
//       break;
//     case 'Wednesday':
//       print('It\'s Wednesday');
//       break;
//     case 'Thursday':
//       print('It\'s Thursday');
//       break;
//     case 'Friday':
//       print('It\'s Friday');
//       break;
//     case 'Saturday':
//       print('It\'s Saturday');
//       break;
//     case 'Sunday':
//       print('It\'s Sunday');
//       break;
//     default:
//   }
// }
