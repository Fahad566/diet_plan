import 'package:diet_plan/models/ingredients.dart';
import 'package:flutter/material.dart';

class RecpieDetailPage extends StatelessWidget {
  final String title, image;
  final List<Ingredients> ingredients;
  const RecpieDetailPage(
      {super.key,
      required this.image,
      required this.title,
      required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 34, 90),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: ingredients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    ingredients[index].quantity.toStringAsFixed(0),
                    style: const TextStyle(fontSize: 18),
                  ),
                  title: Text(
                    '${ingredients[index].name} / Measures : ${ingredients[index].meassure}',
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
