import 'package:app_refeicao/models/favorites.dart';
import 'package:app_refeicao/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import 'screens/meal_detail_screen.dart';

const appThemeModeKey = 'appThemeMode';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Favorites(),
      child: MyApp(),
    ),
  );
}

class MyState extends ChangeNotifier {
  MyState() {
    _init();
  }

  late final SharedPreferences _sharedPreferences;

  var _isLight = true;

  bool get isLight => _isLight;

  void toggleTheme() {
    _isLight = !_isLight;
    _sharedPreferences.setBool(appThemeModeKey, _isLight);
    notifyListeners();
  }

  Future<void> _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _isLight = _sharedPreferences.getBool(appThemeModeKey) ?? true;
    notifyListeners();
  }
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyState(),
      child: Consumer<MyState>(builder: (context, tema, child) {
        return MaterialApp(
            title: 'Vamo Cozinhar?',
            theme: tema._isLight
                ? ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.pink,
                    primaryColor: Colors.blue,
                    hintColor: Colors.amber,
                    fontFamily: 'RaleWay',
                    canvasColor: const Color.fromARGB(255, 53, 53, 53),
                    textTheme: ThemeData.dark().textTheme.copyWith(
                          titleLarge: const TextStyle(
                              fontSize: 20, fontFamily: 'RobotoCondensed'),
                        ),
                  )
                : ThemeData(
                    brightness: Brightness.light,
                    primarySwatch: Colors.pink,
                    primaryColor: Colors.pink,
                    hintColor: Colors.amber,
                    fontFamily: 'RaleWay',
                    canvasColor: Colors.white,
                    textTheme: ThemeData.light().textTheme.copyWith(
                          titleLarge: const TextStyle(
                              fontSize: 20, fontFamily: 'RobotoCondensed'),
                        ),
                  ),
            routes: {
              AppRoute.HOME: (ctx) {
                return Builder(
                  builder: (context) {
                    final favoritesProvider =
                        Provider.of<Favorites>(context, listen: false);
                    return TabsScreen(
                      favoritesProvider
                          .favoriteMeals, // Certifique-se de que a variável `meal` esteja disponível aqui
                    );
                  },
                );
              },
              AppRoute.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
              AppRoute.MEALS_DETAIL: (ctx) {
                return Builder(builder: (context) {
                  final favoritesProvider =
                      Provider.of<Favorites>(context, listen: false);
                  return MealDetailScreen();
                });
              },
            });
      }),
    );
  }
}
