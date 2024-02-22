import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final screenHeight = screenSize.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
        height: screenHeight,
        constraints: const BoxConstraints(minHeight: 560.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('lib/assets/port_dp.png'))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Hi,\nI'm Sayooj Krishna M J\nFlutter Developer",
              style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary),
            ),
          ],
        ),
      ),
    );
  }
}
