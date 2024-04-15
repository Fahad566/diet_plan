import 'package:flutter/material.dart';

class RecpieDetailPage extends StatelessWidget {
  final String  title, image;
  const RecpieDetailPage({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Recipe Details"),
          Text(title)
        ],
      ),
    );
  }
}