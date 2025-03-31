class Item {
  String name;
  double price;
  int quantity;

  Item(this.name, this.price, this.quantity);
}

class ShoppingCart {
  List<Item> _items = [];

  void addItem(Item item) {
    _items.add(item);
  }

  void removeItem(String itemName) {
    _items.removeWhere((item) => item.name == itemName);
  }

  void increaseQuantity(String itemName, int num) {
    var item = _items.firstWhere((item) => item.name == itemName, orElse: () => Item('', 0.0, 0));
    if (item.name.isEmpty) {
      print('ERROR: Item $itemName not found in the cart.');
    } else {
      item.quantity += num;
    }
  }

  void decreaseQuantity(String itemName, int num) {
    var item = _items.firstWhere((item) => item.name == itemName, orElse: () => Item('', 0.0, 0));
    if (item.name.isEmpty) {
      print('ERROR: Item $itemName not found in the cart.');
    } else {
      item.quantity -= num;
      if (item.quantity <= 0) {
        removeItem(itemName);
      }
    }
  }

  double calculateTotalPrice() {
    return _items.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  }
}






// DO NOT MODIFY MAIN METHOD
void main() {
	ShoppingCart cart = ShoppingCart();
  
   // Adding items to the cart
  Item item1 = Item('Laptop', 1200.0, 2);
  Item item2 = Item('Mouse', 20.0, 3);
  Item item3 = Item('Keyboard', 50.0, 1);

	cart.addItem(item1);
  cart.addItem(item2);
  cart.addItem(item3);

  // Displaying the current items in the cart
  print('Items in the cart:');
  cart._items.forEach((item) {
    print('${item.quantity}x ${item.name} - \$${item.price} each');
  });

  // Increasing quantity of an item
  cart.increaseQuantity('Laptop', 1);

  // Displaying the updated items in the cart
  print('\nItems in the cart after increasing Laptop quantity:');
  cart._items.forEach((item) {
    print('${item.quantity}x ${item.name} - \$${item.price} each');
  });

  // Decreasing quantity of an item
  cart.decreaseQuantity('Mouse', 2);

  // Displaying the updated items in the cart
  print('\nItems in the cart after decreasing Mouse quantity:');
  cart._items.forEach((item) {
    print('${item.quantity}x ${item.name} - \$${item.price} each');
  });

	// Exception: Increasing quantity of an unknow item
  print('\nTest increase an Unknown item in the cart\n');
  cart.increaseQuantity('Unknown', 1);

  // Calculating the total price
  double totalPrice = cart.calculateTotalPrice();
  print('\nTotal Price: \$${totalPrice.toStringAsFixed(2)}');

}