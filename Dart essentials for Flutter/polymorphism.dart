// *******************************************
//? Polymorphism
// *******************************************

//? also learn about importing files

import 'inheritance.dart';

//? Note: you can only extend one superclass per subclass
class SelfDriving extends Car { 
  final String name;
  final String color;

  SelfDriving({required this.name, required this.color})
      : super(name: name, color: color);

  @override //? still works without the annotation. It's for a clearer code
  void move() {
    print('AI driving off...');
    // super.move();
  }

  @override
  String toString() {
    return '{name: $name, color: $color}';
  }
}

void main() {
  final tesla = SelfDriving(name: 'Tesla', color: 'grey');
  tesla.move();
  print(tesla);
}
