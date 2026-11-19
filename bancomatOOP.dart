class BankAccount {  // делаю класс BankAccount для работы с банковским счётом
  String owner;       // имя владельца счёта
  double balance = 0; // начальный балан

  BankAccount(this.owner); // конструктор принимает только имя владельцп потомучт о баланс уже задан 

  void deposit(double amount) {   // метод пополнения счёта.принимает сумму пополнения то есть амонт
    if (amount <= 0) { // нельзя положитьм еньше нуля или ноль
      print('Сумма пополнения должна быть больше нуля.');
      return; 
    }
    balance += amount;
  }

  void withdraw(double amount) {   // метод снятия средств. принимает сумму списания опять амонт
    if (amount <= 0) { // опять нельзя снять меньше нуля или ноль
      print('Сумма снятия должна быть больше нуля.');
      return;
    }
    
    if (amount > balance) { // проверяем хватит денег или нет
      print('Ошибка для счёта "$owner": недостаточно средств. Текущий баланс: $balance');
      return;
    }
    balance -= amount; // если денег хватает то минусуем с баланса 
  }
  double getBalance() {
    return balance;
  }
  void printStatement() {  // ьетод вывода краткой выписки по счёту в консоль
    print('Владелец: $owner, баланс: $balance');
  }
}

void main() {

  var account1 = BankAccount('Данияр'); // создаю первый счёт (баланс = 0.0)
  var account2 = BankAccount('Айгуль'); // создаю второй счёт (баланс = 0.0)

  // первый счёт
  account1.deposit(1500);   // баланс Данияра становится 5000.0
  account1.withdraw(1200);  // снимаю 1200 -> баланс становится 3800.0
  account1.withdraw(10000); // попытаюмь снять больше чем уже есть, будет ошибка 

  // второй счёт
  account2.deposit(100000000000000000000);   // баланс Айгуль становится 100000000000000000.0
  account2.deposit(500);    // пополняю ещё на 500 
  account2.withdraw(500);   // снимаю 700

  // проверяюработу метода getBalance
  print('Баланс Айгуль через getBalance(): ${account2.getBalance()}');

  // вывожу итоговые выписки по обоим счетам
  account1.printStatement();
  account2.printStatement();
}