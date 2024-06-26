import 'package:app_refeicao/components/meal_item.dart';
import 'package:app_refeicao/models/meal.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {


 
final List<Meal> favoriteMeals;

FavoriteScreen(this.favoriteMeals);

 
  @override
  Widget build(BuildContext context) {
    
    if(favoriteMeals.isEmpty){
      return const Center(
      child:  Text("Nenhuma refeição favorita!"),
    );
    } else{
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx , index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
    
  }
}