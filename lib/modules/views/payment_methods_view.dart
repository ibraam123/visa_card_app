import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants.dart';
import '../../core/widgets/custom_button.dart';
import 'add_card_view.dart';


class PaymentMethodsView extends StatefulWidget {
  const PaymentMethodsView({super.key});
  static const String routeName = '/paymentMethods';

  @override
  State<PaymentMethodsView> createState() => _PaymentMethodsViewState();
}

class _PaymentMethodsViewState extends State<PaymentMethodsView> {
  int selectedMethod = 0;

  final List<Map<String, dynamic>> methods = [
    {
      "label": "*** *** *** 67",
      "icon": Icons.credit_card,
    },
    {
      "label": "Apple Pay",
      "icon": Icons.apple,
    },
    {
      "label": "Paypal",
      "icon": Icons.paypal,
    },
    {
      "label": "Cash",
      "icon": Icons.attach_money,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Payment Methods",
          style: TextStyle(
            color: primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 16),
              ...List.generate(methods.length, (index) {
                return  Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(
                        methods[index]["icon"],
                        color: primaryColor,
                        size: 60,
                      ),
                      title: Text(
                        methods[index]["label"],
                        style: TextStyle(
                          fontSize: 16,
                          color: index == 0 ? Colors.black : Colors.black87,
                          fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      trailing: Radio<int>(
                        value: index,
                        groupValue: selectedMethod,
                        onChanged: (value) {
                          setState(() => selectedMethod = value!);
                        },
                        activeColor: primaryColor,
                      ),
                    ),
                    if (index != methods.length - 1)
                      Divider(color: Colors.grey.shade300),
                  ],
                );
              }),
              const Spacer(),
              CustomButton(textName: "Add New Card" , onPressed: () {
                Get.toNamed(
                  AddCardView.routeName,
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}