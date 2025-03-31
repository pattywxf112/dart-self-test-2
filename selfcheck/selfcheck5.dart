// Task 1: Define function with arrow syntax =>
void greeting(String name) => print('Hi $name');

// Task 2: Define function with arrow syntax => greeting message
void greetingMsg(String name, String msg) => 
  print('$msg $name');
  

void main() {
  
  // Assign value to myName
  String myName = 'Ing';
  
  // Call function
  greeting(myName); // OUTPUT:  Hi Ing
  
  // Call function
  greetingMsg(myName, 'Good Afternoon!');   // OUTPUT: Good Afternoon! Ing
  
  
  int num = 1;
  
  // Task 3: Add 1 to num value, no return, no argument
  void incrementValue() => num++;
  
  // Call function
  incrementValue();
  
  // Print value after call function
  print(num);       // OUTPUT: 2
  
  // Task 4: Define function 'sum' that takes two numbers, 
  // and returns the summation of two numbers in type 'int'
  int sumAB(int a, int b) => a + b;

  // Call function and print the result
  print(sumAB(1, 2));     // OUTPUT: 3

}

