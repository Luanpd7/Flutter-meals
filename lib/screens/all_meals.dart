import 'package:app_refeicao/components/meal_item.dart';
import 'package:app_refeicao/data/dummy_data.dart';
import 'package:app_refeicao/models/category.dart';
import 'package:app_refeicao/models/meal.dart';
import 'package:flutter/material.dart';

class AllMeals extends StatelessWidget {
   var refeicoes;
 

  AllMeals({Key? key,  this.refeicoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {

//final category = ModalRoute.of(context)!.settings.arguments as Category;

 /*  final categoryMeals = DUMMY_MEALS.where((meal) {
    return meal.categories!.contains(category.id);
   }).toList();*/

    return Scaffold(
      appBar: AppBar(
        title: Text('Todas as refeirções', style: TextStyle( fontWeight: FontWeight.bold),),
        backgroundColor: Colors.pink,
 
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


/* body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListTile(
                  title: Text('Item $index'),
                  subtitle: Text('Subtitle $index'),
                  leading: Icon(Icons.label),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // handle tap
                  }, */