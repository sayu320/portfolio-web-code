import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Netflix Clone Screenshots')),
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
              Image.asset('lib/assets/Netflix1.png'),
              Image.asset('lib/assets/Netflix2.png'),
              Image.asset('lib/assets/Netflix3.png'),
              Image.asset('lib/assets/Netflix4.png'),
              Image.asset('lib/assets/Netflix5.png'),
              Image.asset('lib/assets/Netflix6.png'),
            ],
          ),
        ),
      ),
    );
  }
}
