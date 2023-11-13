// /////********************Exercise 4*********************/////
// 1.	Create a class called BankClient that have 3 private attributes :

// B.	ID which is generated automatically and represents the order of the client in
// the bank Data Base (starting from 1 and can't be changed).
// C.	Name (can't be changed).
// D.	Balance have 3 methods (get, add, subtractIfPossible).

// 2.	Create a constructor that use "Initializer list" to initialize the name.
// 3.	Create a static method that print the number of clients and the bank balance.
// 4.	Create a small test program (main)  .
// Note   The balance is initialized at 0 and can't be negative.

class BankClient {
  static int _clientCount = 0;
  final int _id;
  final String _name;
  double _balance = 0;
  static double bankTotalBalance = 0;
  //Create a constructor that use "Initializer list" to initialize the name.
  BankClient(this._name) : _id = _clientCount++;
// get method for getting the balance
  double get balance => _balance;
  // add amount to Balance
  void addAmount(double amount) {
    if (amount > 0) {
      _balance += amount;
      bankTotalBalance += amount;
    } else {
      print("invalid amount");
    }
  }

  //subtract amount from balance
  void subtractAmount(double amount) {
    if (amount > 0 && _balance > 0 && balance > amount) {
      _balance -= amount;
      bankTotalBalance -= amount;
    } else {
      print("invalid amount or suffcient balance");
    }
  }

  static printClientsdata() {
    print(
        "the number of clients = $_clientCount and the bankbalance =$bankTotalBalance");
  }
}

void main() {
  BankClient client1 = BankClient("Nader");
  BankClient client2 = BankClient("Ahmed");
  BankClient client3 = BankClient("Fady");
  client1.addAmount(5000);
  client2.addAmount(10000);
  client3.addAmount(20000);
  BankClient.printClientsdata();
}
