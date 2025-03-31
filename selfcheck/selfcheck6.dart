// void first(int a, int b) => print('$a $b'); //correct
// void third([int a = 1, int b = 2]) => print('$a $b');
// void forth(int a, {required int b}) => print('$a $b'); //<- this one is bugged in my vscode though

//incorrect
//void second(int a, [int b]) => print('$a $b'); 
// void fifth([int a], {required int b}) => print('$a $b');

// void main(){
//   int a =1;
//   int b=2;
//   first(a, b);
//   third(a,b);
//   forth(a,b);
// }