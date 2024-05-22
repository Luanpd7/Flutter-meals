import 'package:app_refeicao/models/meal.dart';
import 'package:app_refeicao/screens/settings_screens.dart';
import 'package:app_refeicao/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';

void main() => runApp(
  MyApp());
 
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _favoriteMeals = [];  //Lista criada na classe Main
 
 void _togglerFavorite(Meal meal) {
   setState(() {
     _favoriteMeals.contains(meal)? _favoriteMeals.remove(meal) : _favoriteMeals.add(meal); 
      /*o método vai receber um Objeto Meal, 
       e esse objeto passara por uma validação para entra na lista
       se ja tiver, vai remover e se nao tiver vai add*/
   });
 }

 bool _isFavorite(Meal meal){
  return _favoriteMeals.contains(meal);
 }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamo Cozinhar?',
     theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        fontFamily: 'RaleWay',
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed'
          ),
        ),
      ),
     
      routes: {
        AppRoute.HOME: (ctx) => TabsScreen(_favoriteMeals), // Após retorna a lista do favoritos na tela MealDetailScreen, passara a lista na tela TabsScreen 
        AppRoute.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoute.MEALS_DETAIL: (ctx) => MealDetailScreen(_togglerFavorite, _isFavorite), // Passando a função _togglerFavorite para tela MealDetailScreen 
      
      }
    );
  }
}
 
