enum ItemCategoryType { outflow, inflow }

enum TransactionType { fashion, grocery, payments }

class UserInfo {
  final String name;
  final String totalBalance;
  final String inflow;
  final String outflow;
  final List<Transaction> transactions;

  const UserInfo({
    required this.name,
    required this.totalBalance,
    required this.inflow,
    required this.outflow,
    required this.transactions,
  });
}

class Transaction {
  final ItemCategoryType categoryType;
  final TransactionType transactionType;
  final String itemCategoryName;
  final String itemName;
  final String amount;
  final String date;

  const Transaction(this.categoryType, this.transactionType,
      this.itemCategoryName, this.itemName, this.amount, this.date);
}

const userdata = UserInfo(
    name: 'ISAM',
    totalBalance: '\$4,586.00',
    inflow: '\$4,000.00',
    outflow: '\$2,000.00',
    transactions: []);
