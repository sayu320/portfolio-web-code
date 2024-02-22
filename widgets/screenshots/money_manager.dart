import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class MoneyManager extends StatelessWidget {
  const MoneyManager({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Money Manager Screenshots')),
      ),
      backgroundColor: CustomColor.bgLight1,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          child: GridView.count(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            shrinkWrap: true,
            children: [
              Image.asset('lib/assets/Money_manager1.png'),
              Image.asset('lib/assets/Money_manager2.png'),
              Image.asset('lib/assets/Money_manager3.png'),
              Image.asset('lib/assets/Money_manager4.png'),
            ],
          ),
        ),
      ),
    );
  }
}