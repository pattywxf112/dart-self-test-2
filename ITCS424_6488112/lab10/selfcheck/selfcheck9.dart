class Laptop {
  String name = '';
  String color = '';
  
  // Constructor
  Laptop({required String name, required String color}) {
    this.name = name;
    this.color = color;
    print('Laptop constructor');
  }

  void changeColor(String c) => color = c;
}

class MacBook extends Laptop {
// Constructor
  MacBook({required String name, required String color}) 
  : super(name: name, color: color) {
    print('MacBook constructor -> ${super.name}');
  }

  void changeMacBookColor(String c){
    super.changeColor(c);
    print('Call changeColor in superclass');
  }
}

void main() {
  var macbook = MacBook(name: 'MacBook Pro', color: 'Silver');
  macbook.changeMacBookColor('Dark Gray');
  print(macbook.color);

}