import 'package:app_refeicao/components/meal_item.dart';
import 'package:app_refeicao/data/dummy_data.dart';
import 'package:flutter/material.dart';

class AllMeals extends StatelessWidget {
   var refeicoes;
 

  AllMeals({Key? key,  this.refeicoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Todas as refeições', style: Theme.of(context).textTheme.titleLarge ,),
        backgroundColor: Theme.of(context).primaryColor,
 
      ),
      body: ListView.builder(
        itemCount: DUMMY_MEALS.length,
        itemBuilder: (ctx, index){
          return MealItem(DUMMY_MEALS[index]);
        },
         )
        );
    
  }
}


