import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('News App Screenshot')),
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
              Image.asset('lib/assets/News1.png'),
            ],
          ),
        ),
      ),
    );
  }
}
