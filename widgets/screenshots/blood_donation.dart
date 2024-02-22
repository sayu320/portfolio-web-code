import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class BloodDonation extends StatelessWidget {
  const BloodDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Blood Donation Screenshots')),
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
              Image.asset('lib/assets/Blood_donation1.png'),
              Image.asset('lib/assets/Blood_donation2.png'),
              Image.asset('lib/assets/Blood_donation3.png'),
              Image.asset('lib/assets/Blood_donation4.png'),
            ],
          ),
        ),
      ),
    );
  }
}
