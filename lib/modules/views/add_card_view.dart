import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:visa_card_app/modules/views/profile_details_view.dart';

import '../controllers/visa_card_controller.dart';
import '../../core/constants.dart';
import '../../core/widgets/custom_button.dart';
import '../../core/widgets/custom_text_field.dart';
import '../../core/widgets/custom_visa_card.dart';

class AddCardView extends StatelessWidget {
  const AddCardView({super.key});
  static const String routeName = '/AddCardView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(ProfileDetailsView.routeName);
            },
            icon: const Icon(Icons.person, color: Colors.black, size: 30),
          ),
        ],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Add Card",
          style: TextStyle(
            color: primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CardUI(),
            const SizedBox(height: 30),
            CustomTextField(
              maxLength: 20,
              labelText: "Card Holder Name",
              hintText: "Enter Card Holder Name",
              keyboardType: TextInputType.text,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
              ],
            ),
            const SizedBox(height: 30),
            CustomTextField(
              maxLength: 12,
              labelText: "Card Number",
              hintText: "Enter Card Number",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const CustomShortTextField(
                  maxLength: 5,
                  labelText: 'Expiry Date',
                  hintText: '04/28',
                  keyboardType: TextInputType.datetime,
                ),
                const Spacer(flex: 1),
                CustomShortTextField(
                  maxLength: 3,
                  labelText: 'CVV',
                  hintText: '0000',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const Spacer(flex: 1),
              ],
            ),
            const Spacer(),
            GetBuilder<VisaCardController>(
              builder: (controller) => CustomButton(
                textName: "Save Card",
                onPressed: () => controller.saveCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
