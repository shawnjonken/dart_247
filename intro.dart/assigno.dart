
void main() {
  // 1. Define Variables
  print('--- Step 1: Define Variables ---');
  int myInt = 42;
  double myDouble = 3.14;
  String myString = 'Hello Dart';
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print('int: $myInt');
  print('double: $myDouble');
  print('String: $myString');
  print('bool: $myBool');
  print('List: $myList');
  print('');

  // 2. Type Conversion
  print('--- Step 2: Type Conversion ---');
  print('String "100" to int: ${stringToInt("100")}');
  print('String "10.5" to double: ${stringToDouble("10.5")}');
  print('int 50 to String: ${intToString(50)}');
  print('int 50 to double: ${intToDouble(50)}');
  print('');

  // 3. Conversion Function
  print('--- Step 3: convertAndDisplay ---');
  convertAndDisplay("123");
  print('');

  // 4. Control Flow
  print('--- Step 4: Control Flow ---');
  
  // If-Else: Check number
  int numberToCheck = -5;
  if (numberToCheck > 0) {
    print('$numberToCheck is positive');
  } else if (numberToCheck < 0) {
    print('$numberToCheck is negative');
  } else {
    print('$numberToCheck is zero');
  }

  // If-Else: Voting eligibility
  int age = 20;
  if (age >= 18) {
    print('Age $age: Eligible to vote');
  } else {
    print('Age $age: Not eligible to vote');
  }

  // Switch Case
  int day = 3;
  switch (day) {
    case 1: print('Day $day is Monday'); break;
    case 2: print('Day $day is Tuesday'); break;
    case 3: print('Day $day is Wednesday'); break;
    case 4: print('Day $day is Thursday'); break;
    case 5: print('Day $day is Friday'); break;
    case 6: print('Day $day is Saturday'); break;
    case 7: print('Day $day is Sunday'); break;
    default: print('Invalid day');
  }

  // Loops
  print('For loop (1-10):');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('While loop (10-1):');
  int j = 10;
  while (j >= 1) {
    print(j);
    j--;
  }

  print('Do-while loop (1-5):');
  int k = 1;
  do {
    print(k);
    k++;
  } while (k <= 5);
  print('');

  // 5. Combine Data & Control Flow
  print('--- Step 5: Combine Data & Control Flow ---');
  List<int> numbers = [5, 12, 105, 8, 50, 200, 3];
  
  for (int num in numbers) {
    String parity = (num % 2 == 0) ? 'even' : 'odd';
    String category;
    
    if (num >= 1 && num <= 10) {
      category = 'small';
    } else if (num >= 11 && num <= 100) {
      category = 'medium';
    } else {
      category = 'large';
    }
    
    print('Number: $num is $parity and $category');
  }
}

// Helper Functions for Step 2
int stringToInt(String val) {
  return int.parse(val);
}

double stringToDouble(String val) {
  return double.parse(val);
}

String intToString(int val) {
  return val.toString();
}

double intToDouble(int val) {
  return val.toDouble();
}

// Helper Function for Step 3
void convertAndDisplay(String number) {
  int intVal = int.parse(number);
  double doubleVal = double.parse(number);
  print('Input "$number" as int: $intVal');
  print('Input "$number" as double: $doubleVal');
}