class Person {
  //property
  String name; //each person has a name

  //normal constructor
  Person(this.name); //each person has a name

  //factory constructor
  factory Person.random() {
    return Person('Random Person');
  }
}

void main() {
  Person person1 = Person('John Doe');
  Person person2 = Person.random();

  print(person1.name);
  print(person2.name);
}
