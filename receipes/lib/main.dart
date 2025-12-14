import 'package:flutter/material.dart';
import 'package:receipes/Model/Recipe.dart';
import 'package:receipes/recipe_detail.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
}
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(child: Container(
            child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                // print('You tapped on ${Recipe.samples[index].imgLabel}');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetail(recipe: Recipe.samples[index]),
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
          ),
        ),
      ),
    );
  }

 Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: <Widget>[
        Image.asset(
          recipe.imageUrl,
          width: 550,
          height: 300,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 14.0),
        Text(recipe.imgLabel
        ,style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          fontFamily: 'Palatino',
        ),
        ),    
      ],
    ),
  ),
  );
 }
}