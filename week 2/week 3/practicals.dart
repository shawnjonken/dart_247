/*
Task Requirements:
1. Encapsulate Your Data: Create a class that protects its sensitive data with private variables and controlled access methods.
2. Explore Inheritance: Implement a subclass that inherits properties and methods from a superclass.
3. Embrace Polymorphism: Demonstrate method overriding.
4. Master Abstraction: Design abstract classes and define abstract methods.
*/

// 4. Master Abstraction
// Abstract class defining the contract for all library items
abstract class LibraryItem {
  // Abstract methods (must be implemented by subclasses)
  void checkout();
  void returnItem();

  // specific method that can be overridden (Polymorphism)
  void displayInfo() {
    print("Generic Library Item");
  }
}

// 2. Explore Inheritance
// The Book class inherits from LibraryItem
class Book extends LibraryItem {
  // 1. Encapsulate Your Data
  // Private variables (prefixed with _)
  String _title;
  String _author;
  int _publishYear;
  bool _isCheckedOut = false;

  // Constructor
  Book(this._title, this._author, this._publishYear);

  // Getters for controlled access
  String get title => _title;
  String get author => _author;
  int get publishYear => _publishYear;
  bool get isCheckedOut => _isCheckedOut;

  // 3. Embrace Polymorphism
  // Overriding abstract methods from the superclass
  @override
  void checkout() {
    if (_isCheckedOut) {
      print("Error: '$_title' is already checked out.");
    } else {
      _isCheckedOut = true;
      print("Success: You have checked out '$_title'.");
    }
  }

  @override
  void returnItem() {
    if (!_isCheckedOut) {
      print("Error: '$_title' is not checked out.");
    } else {
      _isCheckedOut = false;
      print("Success: You have returned '$_title'.");
    }
  }

  // Overriding a concrete method
  @override
  void displayInfo() {
    print(
      "Book Details: '$_title' by $_author ($_publishYear) - Status: ${_isCheckedOut ? 'Checked Out' : 'Available'}",
    );
  }
}

// Another subclass to demonstrate Polymorphism further
class DVD extends LibraryItem {
  String _title;
  String _director;

  DVD(this._title, this._director);

  @override
  void checkout() {
    print("DVD '$_title' checked out for 3 days.");
  }

  @override
  void returnItem() {
    print("DVD '$_title' returned.");
  }

  @override
  void displayInfo() {
    print("DVD Details: '$_title' directed by $_director");
  }
}

void main() {
  print("--- Library Management System ---");

  // Creating instances
  Book book1 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);
  DVD dvd1 = DVD("Inception", "Christopher Nolan");

  // Using the objects
  // Abstraction allows us to treat them as LibraryItems
  List<LibraryItem> items = [book1, dvd1];

  for (var item in items) {
    print("\n--- Processing Item ---");
    // Polymorphism: correct displayInfo() is called for each type
    item.displayInfo();

    // Encapsulation: We can't access _title directly, but we can use methods
    item.checkout();

    // Demonstrate state change in Book
    if (item is Book) {
      print("Is book available? ${!item.isCheckedOut}");
    }

    item.returnItem();
  }
}
