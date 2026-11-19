class Product {  // создаю класс продукт 
  String title; // название товара
  double price; // цена
  int quantity; // кол-во на складе

  Product(this.title, this.price, this.quantity);

  // возвращаю общую стоимость позиции на складе
  double getTotalCost() {
    return price * quantity;
  }

  // увеличиваю колво товара на складе
  void restock(int amount) {
    if (amount > 0) {
      quantity += amount;
    }
  }

  // вывожу инфу о товаре
  void printProduct() {
    print('Товар: $title, цена: $price, кол-во: $quantity');
  }
}

void main() {
  // создаю список из 5 товаров
  List<Product> products = [
    Product('Клавиатура', 2500.0, 10),
    Product('Монитор', 18500.0, 4),
    Product('Мышь', 1200.0, 25),
    Product('Ноутбук', 64000.0, 2),
    Product('Наушники', 4300.0, 8),
  ];

  // вывожу уинф о каждом товаре
  for (var p in products) {
    p.printProduct();
  }

  // пополняю остаток третьего товара и выводим обновлённые данные
  products[2].restock(10);
  print('После пополнения:');
  products[2].printProduct();

  // считает общую стоимость всего склада
  double totalCost = 0;
  for (var p in products) {
    totalCost += p.getTotalCost();
  }
  print('Общая стоимость склада: $totalCost');

  // ищет товар с максимальной ценой
  Product mostExpensive = products.first;
  for (var p in products) {
    if (p.price > mostExpensive.price) {
      mostExpensive = p;
    }
  }
  print('Самый дорогой товар: ${mostExpensive.title}');
}
// азалияяяяяя