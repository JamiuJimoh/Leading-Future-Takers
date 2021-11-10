// *******************************************
//? Constructors
// *******************************************

class Car {
  String? name;
  String? colour;
  int? topSpeed;

  // Car(String? name, String? colour, int? topSpeed) {
  //   //! the this keyword refer to the current object being instantiated
  //   this.name = name;
  //   this.colour = colour;
  //   this.topSpeed = topSpeed;
  // }

  // Car(this.name, this.colour, this.topSpeed);
  Car({this.name, this.colour, this.topSpeed});
  
//methods
  void displayProps() {
    print(name);
    print(colour);
    print('$topSpeed mph');
  }

  void drive() {
    print('bbbrrrrrrrrr...$name drives off');
  }
}

void main() {
  // Car nissan = Car('Nissan', 'grey', 110);
  Car nissan = Car(name: 'Nissan', colour: 'grey', topSpeed: 110);
  nissan.displayProps();
  nissan.drive();
}
