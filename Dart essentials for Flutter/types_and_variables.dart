// ignore_for_file: unused_local_variable

main() {
  // print(name);
  // print(num1);
  // print(t);
  // print(count); //! count is null
  //print(count2); //! count2 must be initialized before it is used

// *******************************************
//? Data Types
// *******************************************
//Primitive types
// String     -   String
// Numbers    -    int  ||  double
// boolean    -   bool

// *******************************************
//? Variables
// *******************************************

  var name = 'Jamiu'; //! mutable

  String name2 = 'Jimoh'; //! you can only declare a variable once

  // String namee = name2;

  // String nameee = '$name2';

  // var s2 = 'The + operator ' + 'works, as well.';

  int num1 = 23;

  double num2 = 23.8;

  bool t = true;

  bool f = false;

  // dynamic dynVariable = 5;
  // dynVariable = 'e';

  String? nullVariable = null; //! use the '?' to declare a null variable.

  int? count;

  late int count2;

// Note: Avoid using reserved keywords as variable names

// ***********************************************

//? Declaring variables with 'final' and 'const'
/* If you never intend to change a variable, use final or const,
 either instead of var or in addition to a type. A final variable
 can be set only once; a const variable is a compile-time constant.
(Const variables are implicitly final.) */
// Compile-time vs run-time

  final name3 = 'Jamiu'; // Without a type annotation
  final String nickname = 'Sergio';

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar;
  // final time = DateTime.now();
  // const timee = DateTime.now();

  //! final variables can get any data during build and run time
  //! final variables are initialized when accessed.
  //! the variable will never be initialized if it's never used in the program
  //! const variables must be initialized before build time

  testFunctionFinal(5);
}

void testFunctionFinal(int parameter) {
  final variable = parameter;
  // const variable2 = parameter; //! Parameter must be set before initialization
  print(variable);
}
