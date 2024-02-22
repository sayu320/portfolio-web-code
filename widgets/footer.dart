import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        'Created by Sayooj Krisna MJ with Flutter 3.10',
        style: TextStyle(
            fontWeight: FontWeight.w400, color: CustomColor.whiteSecondary),
      ),
    );
  }
}
