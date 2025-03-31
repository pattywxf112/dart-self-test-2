class Car {
  void power() {
    print('It runs on petrol.');
  }
}

class Honda extends Car {}

class BYD extends Car {
  @override
  void power() {
    print('It runs on electricity.');
  }
}

void main() {
  Honda honda = Honda();
  BYD byd = BYD();
  honda.power();
  byd.power();
}