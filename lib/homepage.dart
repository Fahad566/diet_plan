// ignore_for_file: deprecated_member_use

import 'package:diet_plan/models/recipe.dart';
import 'package:diet_plan/recipeDetailPage.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 4, 34, 90),
          title: const Text('Diet Planner'),
          titleTextStyle: const TextStyle(
          color: Colors.white ,
          fontWeight: FontWeight.bold,
          fontSize:23,
          ),
        ),
        body: ListView.builder(
          itemCount: Recipe.listofRecipes.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => 
                    RecpieDetailPage(image: Recipe.listofRecipes[index].imageUrl, 
                    title: Recipe.listofRecipes[index].recipename,),));

                  }, 
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage(Recipe.listofRecipes[index].imageUrl),
                      ),
                    ),
                  ),
                ),
                Text(Recipe.listofRecipes[index].recipename,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ],
            );
          }
        ),
        );
  }
}
