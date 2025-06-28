

import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/card_model.dart';

class FirebaseService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> saveCard(CardModel card) async {
    await _firestore.collection('cards').add(card.toJson());
  }

  static Future<List<CardModel>> getCards() async {
    final QuerySnapshot querySnapshot = await _firestore.collection('cards').get();
    final List<CardModel> cards = querySnapshot.docs.map((doc) {
      final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return CardModel(
        cardHolderName: data['cardHolderName'],
        cardNumber: data['cardNumber'],
        expiryDate: data['expiryDate'],
        cvv: data['cvv'],
      );
    }).toList();
    return cards;
  }
}
