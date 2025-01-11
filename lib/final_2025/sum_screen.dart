import 'package:different_flutter_ui/final_2025/result_screen.dart';
import 'package:flutter/material.dart';

class SumScreen extends StatelessWidget {
  SumScreen({super.key});

  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        spacing: 16,
        children: [
          TextField(
            controller: firstController,
          ),
          TextField(
            controller: secondController,
          ),
          ElevatedButton(
            onPressed: () {
              int sum = int.parse(firstController.text) + int.parse(secondController.text);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResultScreen(),
                  settings: RouteSettings(arguments: sum),
                ),
              );
            },
            child: const Text('add'),
          ),
        ],
      ),
    );
  }
}
