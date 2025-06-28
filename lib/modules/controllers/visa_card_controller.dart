import 'package:get/get.dart';

import '../../models/card_model.dart';
import '../../services/firebase_service.dart';

class VisaCardController extends GetxController {
  final RxString _cardName = "".obs;
  final RxString _cardNumber = "".obs;
  final RxString _expireDate = "".obs;

  String get cardName => _cardName.value;
  String get cardNumber => _cardNumber.value;
  String get expireDate => _expireDate.value;

  void setCardName(String newCardName) {
    _cardName.value = newCardName;
    update();
  }

  void setCardNumber(String newCardNumber) {
    String formatted = '';

    for (int i = 0; i < newCardNumber.length; i++) {
      if (i != 0 && i % 4 == 0) {
        formatted += ' ';
      }
      formatted += newCardNumber[i];
    }

    _cardNumber.value = formatted;
    update();
  }

  void setExpireDate(String newExpireDate) {
    _expireDate.value = newExpireDate;
    update();
  }

  Future<void> saveCard() async {
    try {
      final card = CardModel(
        cardHolderName: cardName,
        cardNumber: cardNumber,
        expiryDate: expireDate,
        cvv: '125',
      );
      await FirebaseService.saveCard(card);
      if (cardName.isNotEmpty &&
          cardNumber.isNotEmpty &&
          expireDate.isNotEmpty) {
        Get.snackbar('Success', 'Card saved successfully');
      } else {
        Get.snackbar('Error', 'Please fill in all fields');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to save card');
    }
  }
}
