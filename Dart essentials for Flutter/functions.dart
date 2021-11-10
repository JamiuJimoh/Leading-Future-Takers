// *******************************************
//? Functions
// *******************************************

// print() is a function.

//! Functions is used to package some pieces of code into a block and to run the code when called
//! Saves us from typing the same code repeatedly

void main() {
  // sayHi();
  // sayHi();
  // var truth = isTrue();
  // print(truth);
  // greetings('Lizzy');
  // int findMax = max(178, 100);
  // print(findMax);
  // print(say('Jamiu', 'hello'));
  // print(say('Jamiu', 'hello', 'Samsung'));
  // difference(30, 12);
  // differences(a: 30, b: 12);
  printNum();
}

//? void functions. No return
void sayHi() {
  print('Hi there');
  print('How are you doing?');
}

bool isTrue() {
  return true;
}

//? The => expr syntax is a shorthand for { return expr; }
bool isStillTrue() => true; //! arrow function

// *******************************************
//? Parameters
// *******************************************

//! Now we can make our functions do slightly different things by providing different inputs.

void greetings(String name) {
  print('Hi $name, how are you doing');
}

int max(int a, int b) {
  if (a > b) {
    return a;
  } else {
    return b;
  }
}

//////////////////////////////////////////////
//? Optional positional parameters

String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}

//////////////////////////////////////////////
//? named parameters

// void difference(int a, int b) => print(a - b);

void differences({required int a, int b = 0}) => print(a - b);

//////////////////////////////////////////////
//? Scope

const num = 321;

// void printNum() {
//   print(num);
// }
void printNum() {
  {
    var num = 10;
    print(num);
  }
  print(num);
}
