class CardModel {
  final String cardHolderName;
  final String cardNumber;
  final String expiryDate;
  final String cvv;

  CardModel({
    required this.cardHolderName,
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  });

  Map<String, dynamic> toJson() => {
    'cardHolderName': cardHolderName,
    'cardNumber': cardNumber,
    'expiryDate': expiryDate,
    'cvv': cvv,
  };
}



