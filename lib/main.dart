import 'package:flutter/material.dart';
import 'package:recipe_app/pages/add_recipe.dart';
import 'package:recipe_app/pages/home.dart';
import 'package:recipe_app/pages/recipe.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:AddRecipe(),
    );  
  }
}