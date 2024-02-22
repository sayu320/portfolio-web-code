import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hi,\nI'm Sayooj Krishna M J\nFlutter Developer",
                style: TextStyle(
                    fontSize: 30.0,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('lib/assets/port_dp.png'))),
          )
        ],
      ),
    );
  }
}
