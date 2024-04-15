class Recipe {
  String recipename, imageUrl;
  Recipe(this.recipename, this.imageUrl);

  static List<Recipe> listofRecipes = [

  Recipe('Pizza','Asset/IMG-20240222-WA0014.jpg'),
  Recipe('Cookies','Asset/IMG-20240222-WA0015.jpg'),
  Recipe('Toast', 'Asset/IMG-20240222-WA0016.jpg'),
  Recipe('Fries', 'Asset/IMG-20240222-WA0017.jpg'),
  ];

}