import 'package:app_refeicao/models/meal.dart';
import 'package:flutter/material.dart';

class Favorites with ChangeNotifier {
  List<Meal> _favoriteMeals = [];

  void togglerFavorite(Meal meal) {
    _favoriteMeals.contains(meal)
        ? _favoriteMeals.remove(meal)
        : _favoriteMeals.add(meal);
    notifyListeners();
  }

  bool isFavorite(Meal meal) {
    return _favoriteMeals.contains(meal);
  }

  List<Meal> get favoriteMeals => _favoriteMeals;
}