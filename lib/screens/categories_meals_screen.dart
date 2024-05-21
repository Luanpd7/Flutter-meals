

import 'package:app_refeicao/components/meal_item.dart';
import '../components/meal_item.dart';
import '../data/dummy_data.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesMealsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   final category = ModalRoute.of(context)!.settings.arguments as Category;

   final categoryMeals = DUMMY_MEALS.where((meal) {
    return meal.categories!.contains(category.id);
   }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title!, style: TextStyle( fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pink,
 
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index){
          return MealItem(categoryMeals[index]);
        },
         )
        );
  }
}