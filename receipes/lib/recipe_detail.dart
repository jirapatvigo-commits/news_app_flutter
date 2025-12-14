import 'package:flutter/material.dart';
import 'package:receipes/Model/Recipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe Detail')
      ),
      body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // ⬅️ ไม่ให้กินพื้นที่เต็มจอ
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(recipe.imageUrl),
              const SizedBox(height: 16.0),
              Text(
                recipe.imgLabel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                recipe.Detail,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.grey,),
                textAlign: TextAlign.center,
                
              ),
            ],
          ),
        ),
      );
  }
}
 