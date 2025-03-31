// void main(List<String> args) {
//   int a = 1;
//   assert(a == 1);
//   assert(a < 100);
//   print('a is correct!');

//   String? b;
//   assert(b == null, 'b should be null');
//   b ??= 'Hello';
//   assert(b.startsWith('h'), 'b should starts with letter "h"');
//   print('b is correct!');

//   bool? c;
//   assert(c == null);
//   c = true;
//   assert(c == true);

// }

// void main(List<String> args) {
//   try {
//     int a = 1;
//     assert(a == 1, 'a should be 1');
//     assert(a < 100, 'a should be less than 100');
//     print('a is correct!');

//     String? b;
//     assert(b == null, 'b should be null initially');
//     b ??= 'Hello';
//     assert(b.startsWith('h'), 'b should start with letter "h"'); // This will fail
//     print('b is correct!');

//     bool? c;
//     assert(c == null, 'c should be null initially');
//     c = true;
//     assert(c == true, 'c should be true after assignment');
//     print('c is correct!');
//   } catch (e, stacktrace) {
//     print('Assertion failed: $e');
//     print('Stack Trace: $stacktrace');
//   }
// }