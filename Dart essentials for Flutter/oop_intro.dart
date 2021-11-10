// *******************************************
//? Classes (and objects)
// *******************************************

//!  Every object is an instance of a class, and all classes except Null descend from Object
//! Class is used to model real world objects.
//? Analogy ==> Consider a person as a class. A person might have attributes like name, age, height e.t.c. A person can do things like run, talk e.t.c.

class Person {
  // attributes or properties
  // instance variables

  //  final String name;
  // final int age;
  // final int height;
  String? name; //! initially null
  int? age;
  int? height;

  //methods
  void run() {
    print('Now, $name is running.');
  }

  void talk() {
    print('Hi, I am $name. I am $age years old. I am $height cm tall.');
  }

  void quote(String q) {
    print(q);
  }
}

void main() {
  // final jamiu = Person();
  //print(jamiu); // jamiu is an instance of 'Person'.
  // print(jamiu.age);
  // jamiu.name = 'Jamiu';
  // jamiu.age = 99;
  // jamiu.height = 200;

  // jamiu.talk();
  // jamiu.run();
  // jamiu.quote('Knowledge is power');

  // final dupe = Person();

  // dupe.name = 'Modupe';
  // dupe.age = 97;
  // dupe.height = 190;

  // dupe.talk();
  // dupe.run();
  // dupe.quote('You only live once!');
}
