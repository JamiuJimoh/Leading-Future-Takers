// *******************************************
//? Inheritance
// *******************************************

//! All class extends the Object class

class Vehicle {
  //TODO: 1
  final String locomotion;
  Vehicle(this.locomotion);

  void move() {
    print('Moving...');
  }
}

class Car extends Vehicle {
  // TODO: 2
  final String name;
  final String color;

  Car({
    required this.name,
    required this.color,
  }) : super('by land'); // TODO: 4

  void drive() {
    //? you can call a method of the super class
    // super.move(); // TODO: 5
    print('Driving...');
  }

  // void move() { //? after calling move from polymorphism
  //   print('Car is moving');
  // }

  @override
  String toString() {
    // TODO: 6
    return '{name: $name, color: $color}';
  }
}

class Ship extends Vehicle {
  // TODO: 3
  final String name;
  final double weight;

  Ship({
    required this.name,
    required this.weight,
  }) : super('by sea');

  void sail() {
    print('Sailing...');
  }

  @override
  String toString() {
    return '{name: $name, weight: $weight kg}';
  }
}

void main() {
  final toyota = Car(name: 'Toyota', color: 'red');
  final titanic = Ship(name: 'Titanic', weight: 1000.0);

  // toyota.move();
  // titanic.move();
  toyota.drive();
  titanic.sail();

  print(toyota);
  print(titanic);
}
