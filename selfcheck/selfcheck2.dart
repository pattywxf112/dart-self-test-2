// Task 1:
// Return true if at least one product starts with letter 'S'
bool anyProductWithS(Iterable<String> products){
  return products.any((element) => element.startsWith('S'));
}
// Task 2:
// Return true if all products are less than 50.00
bool allProductUnder50(Iterable<double> products){
  return products.every((element) => element < 50.0);
}
void main() {
  var names = ['Bread', 'Pizza', 'Ice-Cream'];
  var prices = [20.0, 300.0, 45.0];
  
  print(anyProductWithS(names));     // false
  print(allProductUnder50(prices));   // flase

  names.add('Strawberry');    // add new product
  prices.add(49);
  print(anyProductWithS(names));     // true

  names.removeAt(1);   // remove pizza at index 1
  prices.removeAt(1);
  print(allProductUnder50(prices));   // true
}
