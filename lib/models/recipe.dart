import 'package:diet_plan/models/ingredients.dart';

class Recipe {
  String recipename, imageUrl;
  final List<Ingredients> ingredients;
  final int servings;
  Recipe(this.recipename, this.imageUrl, this.ingredients, this.servings);

  static List<Recipe> listofRecipes = [
    Recipe(
      'Pizza',
      'Asset/IMG-20240222-WA0014.jpg',
      [
        Ingredients(name: 'Cheese', quantity: 1, meassure: 'Slices'),
        Ingredients(name: 'Bread', quantity: 1, meassure: 'Slices'),
      ],
      1,
    ),
    Recipe(
      'Cookies',
      'Asset/IMG-20240222-WA0015.jpg',
      [
        Ingredients(name: 'Flour', quantity: 1, meassure: '2 Cup'),
        Ingredients(name: 'Butter', quantity: 1, meassure: '2 tablespoon'),
        Ingredients(name: 'Sugar', quantity: 1, meassure: '1 cup'),
      ],
      2,
    ),
    Recipe(
      'Toast',
      'Asset/IMG-20240222-WA0016.jpg',
      [
        Ingredients(name: 'Butter', quantity: 1, meassure: '2 tablespoon'),
        Ingredients(name: 'Bread', quantity: 1, meassure: 'As of U Need'),
      ],
      3,
    ),
    Recipe(
      'Fries',
      'Asset/IMG-20240222-WA0017.jpg',
      [
        Ingredients(name: 'Potato', quantity: 1, meassure: 'As Of U Need'),
        Ingredients(name: 'Oil', quantity: 1, meassure: 'One Bowl'),
      ],
      4,
    ),
  ];
}
