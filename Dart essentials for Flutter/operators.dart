// *******************************************
//? Arithmetic operators
// *******************************************

// Add         -     +
// Subtract    -     -
// Multiply    -     *
// Divide      -     /
// Modulo      -     %

void arithOper() {
  print('6 + 3 = ${6 + 3}');
  print('6 - 3 = ${6 - 3}');
  print('6 * 3 = ${6 * 3}');
  print('6 / 3 = ${6 / 3}');
  print('6 % 3 = ${6 % 3}');
  print('5 % 3 = ${5 % 3}');
}

// *******************************************
//? Equality and relational operators
// *******************************************

// Equal                      -     ==
// Not equal                  -     !=
// Greater than               -     >
// Less than                  -     <
// Greater than or equal to   -     >=
// Less than or equal to      -     <=
// Type test                  -     is || is!

void equRelOpe() {
  print('6 == 6 = ${6 == 6}');
  print('6 != 3 = ${6 != 3}');
  print('6 > 3 = ${6 > 3}');
  print('6 < 3 = ${6 < 3}');
  print('6 <= 3 = ${6 <= 3}');
  print('4 >= 4 = ${4 >= 4}');
  print('4 is a number = ${4 is int}');
  print('4 is not a boolean = ${4 is! bool}');
}

// *******************************************
//? Assignment operators
// *******************************************
// =  +=  -=  *=  /=  %=

void assOper() {
  var a = 2;
  a *= 3;
  print(a);
}

// *******************************************
//? Logical operators
// *******************************************

// AND      -     &
// OR       -    ||

void logOper() {
  var t = true;
  var f = false;
  print('t & f = ${t & f}');
  print('t || f = ${t || f}');
}

void main() {
  // arithOper();
  // equRelOpe();
  // assOper();
  // logOper();
}
