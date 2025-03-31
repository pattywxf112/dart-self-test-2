void main(List<String> args) {
  var cities = ['Bangkok', 'Tokyo', 'Seoul', 'Paris', 'London'];
  // using mapping to convert all cities name to capital letters
 
  var allCapCities = cities.map((city) => city.toUpperCase());

  // print output
  print(allCapCities.toList());  // expected output: [BANGKOK, TOKYO, SEOUL, PARIS, LONDON]

  // How about the cities variable? What is the output of this statement?
  print(cities);        // expected output: ???
}