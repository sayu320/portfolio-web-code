import 'package:flutter/material.dart';
import 'package:portfolio_web/constants/colors.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Todo App Screenshots')),
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
              Image.asset('lib/assets/Todo_1.png'),
              Image.asset('lib/assets/Todo2.png'),
              Image.asset('lib/assets/Todo3.png'),
            ],
          ),
        ),
      ),
    );
  }
}
