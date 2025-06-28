import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../modules/controllers/visa_card_controller.dart';
import '../constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.keyboardType = TextInputType.text,
    this.inputFormatters = const [],
    required this.maxLength,
  });

  final String hintText;
  final String labelText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final int maxLength;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VisaCardController>(
      init: VisaCardController(),
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: textColor, // Replace with your `textColor` if defined
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          TextField(
            maxLength: maxLength,
            onChanged: (value){
              if (labelText == "Card Holder Name") {
                controller.setCardName(value);
              } else if (labelText == "Card Number") {
                controller.setCardNumber(value);
              }
            },
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
class CustomShortTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final int maxLength;

  const CustomShortTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.inputFormatters = const [],
    required this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VisaCardController>(
      init: VisaCardController(),
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Container(
            width: 90,
            height: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              maxLength: maxLength,
              onChanged: (value){
                if (labelText == "Expiry Date") {
                  controller.setExpireDate(value);
                }
              },
              textAlign: TextAlign.center,
              keyboardType: keyboardType,
              inputFormatters: inputFormatters,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.black),
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
