// *******************************************
//? Getters and Setters
// *******************************************

//! Getters and setters are special methods that provide read and write access to an object’s properties

class Library {
  String name;
  List<String> books;

  Library({
    required this.name,
    required this.books,
  });

  int get booksCount => books.length;

  set setFirstBook(String book) {
    this.books[0] = book;
  }
}

void main() {
  final myLibrary = Library(
    books: ['Lord of the Rings', 'Harry Potter', 'Half of a yellow Sun'],
    name: 'ourLibrary',
  );

  print(myLibrary.booksCount);
  print(myLibrary.books);
  myLibrary.setFirstBook = 'Dracula';
  print(myLibrary.books);

  // var l = [];
  // l[0] = 's';
  // print(l);
}
