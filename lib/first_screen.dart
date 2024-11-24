import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'Color',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              Container(
                color: Colors.red,
                child: const Center(child: Text("Red Color")),
              ),
              Container(
                color: Colors.yellow,
                child: const Center(child: Text("yellow Color")),
              ),
              Container(
                color: Colors.green,
                child: const Center(child: Text("green Color")),
              ),
              Container(
                color: Colors.blue,
                child: const Center(child: Text("Blue Color")),
              ),
            ],
          ),
          const Text(
            "what is your fav color?",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
