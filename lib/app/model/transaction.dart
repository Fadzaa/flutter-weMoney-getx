class Transaction {
  final String paymentMethod;
  final String phoneNumber;
  final String description;
  final String time;
  final double amount;

  Transaction({
    required this.paymentMethod,
    required this.phoneNumber,
    required this.description,
    required this.time,
    required this.amount,
  });
}
