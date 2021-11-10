// *******************************************
//? Lists
// *******************************************

// ignore_for_file: unused_local_variable

void main() {
  var list = [1, 2, 3];

  final List<String> names = ['Jamiu', 'Jimoh', 'Sergio'];

  final myNames = <String>['Dayo', 'Lizzy', 'John', 'Kendrick'];

  var secList = const [1, 2, 3];

  //print(secList[1]);
  //secList[0] = 1; //! cannot modify an unmodifiable list.
  // print(secList[1]);

  // final nestedList = [
  //   [1, 2, 3],
  //   [4, 5, 6],
  //   [10, 12, 32],
  // ];

  // for (var i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }

  // for (var n in myNames) {
  //   print(n);
  // }

  // for (var i = 0; i < nestedList.length; i++) {
  //   for (var j = 0; j < nestedList[i].length; j++) {
  //     print(nestedList[i][j]);
  //   }
  // }

  // var spreadList = [5, 6, 8, ...list];
  // print(spreadList);

  // var ifSpreadList = [
  //   for (var number in spreadList)
  //     if (number % 2 == 0) number,
  // ];
  // print(ifSpreadList);

// *******************************************
//? Sets
// *******************************************

// ! A set in Dart is an unordered collection of unique items. Dart support for sets is provided by set literals and the Set type.

// var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

// var emptySet = <String>{}; //! creates an empty set of Strings.

// var notASet = {}; //! Note that this creates a map and not a set
//! a map is also a dart collection. We'll get to that soon.

// var n = {'Jamiu', 'Jimoh', 'Ola', 'Lekan', 'Ola'};
// print(n);

// *******************************************
//? Maps
// *******************************************

//! In general, a map is an object that associates keys and values. Both keys and values can be any type of object. Each key occurs only once, but you can use the same value multiple times. Dart support for maps is provided by map literals and the Map type.

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  var spreadMap = {...nobleGases, ...gifts};
  // print(
  //     gifts['second']); //? you use the keys to access their respective values.
  // print(nobleGases[2]);
  // print(spreadMap);
}


//! Note: There are some methods for the mentioned collections and we'll cover them in details when we get to OOP.
