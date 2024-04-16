// ignore_for_file: non_constant_identifier_names

import 'package:diet_plan/models/ingredients.dart';
import 'package:flutter/material.dart';

class RecpieDetailPage extends StatefulWidget {
  final String title, image;
  final List<Ingredients> ingredients;
  final dynamic servings;

  const RecpieDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.ingredients,
    this.servings,
  });

  @override
  State<RecpieDetailPage> createState() => _RecpieDetailPageState();
}

class _RecpieDetailPageState extends State<RecpieDetailPage> {
  int slider_val = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 4, 34, 90),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage(widget.image),
          ),
          Text(
            widget.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.ingredients.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(
                    '${widget.ingredients[index].quantity * slider_val}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  title: Text(
                    '${widget.ingredients[index].name} / Measures : ${widget.ingredients[index].meassure}',
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '${slider_val * widget.servings} servings',
            value: slider_val.toDouble(),
            onChanged: (value) {
              setState(() {
                slider_val = value.round();
              });
            },
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
