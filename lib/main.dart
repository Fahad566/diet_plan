import 'package:diet_plan/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DietPlan());
}

class DietPlan extends StatelessWidget {
  const DietPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      );
  }
}
