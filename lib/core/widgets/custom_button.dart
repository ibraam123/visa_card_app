import 'package:flutter/material.dart';

import '../constants.dart';


class CustomButton extends StatelessWidget {
   const CustomButton({super.key, required this.textName, this.onPressed});
  final String textName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(
       textName,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
