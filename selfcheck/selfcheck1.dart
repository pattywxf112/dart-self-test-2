void main() {

  Iterable<String> iterable = ['Bangkok', 'Tokyo', 'Seoul', 'Paris', 'London'];
  // Find the first element that contains the letter 's' 
  var found1 = iterable.firstWhere((element) => element.contains('s'));
  print('found1 is $found1');
  

  // Find the last element that contains the letter 'k' and ends with the letter 's'
  // If no value is found, return 'No value'
  var found2 = iterable.lastWhere(
    (element) => element.contains('k') && element.endsWith('s'),
    orElse: () => 'No value'
  );
  print('found2 is $found2');
  
}