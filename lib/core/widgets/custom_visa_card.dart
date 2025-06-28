import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visa_card_app/core/widgets/triangle_painter.dart';

import '../../modules/controllers/visa_card_controller.dart';
import '../constants.dart';

class CardUI extends StatelessWidget {
  const CardUI({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth * 0.85;
    final cardHeight = cardWidth * 0.6;

    return GetBuilder<VisaCardController>(
      init: VisaCardController(),
      builder: (controller) => Center(
        child: Container(
          width: double.infinity,
          height: cardHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Color(0xFFF8EEE4),
          ),
          child: Stack(
            children: [
              // Top triangle decoration
              Positioned(
                top: 0,
                left: 0,
                child: CustomPaint(
                  painter: TrianglePainter(),
                  size: Size(cardWidth, cardHeight * 0.5),
                ),
              ),

              // Rectangle chip
              Positioned(
                top: cardHeight * 0.1,
                right: cardWidth * 0.05,
                child: Container(
                  width: cardWidth * 0.13,
                  height: cardHeight * 0.12,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red.shade200, width: 2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),

              // Card number
              Positioned(
                top: cardHeight * 0.45,
                left: cardWidth * 0.07,
                child: Text(

                  controller.cardNumber,
                  style: TextStyle(
                    fontSize: cardWidth * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    letterSpacing: 2,
                  ),
                ),
              ),

              // Card holder name
              Positioned(
                bottom: cardHeight * 0.18,
                left: cardWidth * 0.07,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Holder Name',
                      style: TextStyle(
                        fontSize: cardWidth * 0.035,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      controller.cardName,
                      style: TextStyle(
                        fontSize: cardWidth * 0.045,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Expiry date
              Positioned(
                bottom: cardHeight * 0.18,
                right: cardWidth * 0.07,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Expiry date',
                      style: TextStyle(
                        fontSize: cardWidth * 0.035,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      controller.expireDate,
                      style: TextStyle(
                        fontSize: cardWidth * 0.045,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Card chip icon
              Positioned(
                bottom: cardHeight * 0.07,
                right: cardWidth * 0.07,
                child: Icon(
                  Icons.credit_card,
                  size: cardWidth * 0.08,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
