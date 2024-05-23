import 'package:app_refeicao/models/meal.dart';
import 'package:flutter/material.dart';
import '../screens/categories_screen.dart';
import '../screens/favorite_screen.dart';
import '../components/main_drawer.dart';

class TabsScreen extends StatefulWidget {

   List<Meal> favoriteMeals;   //Aqui vai armazenar o resultado lista da função _togglerFavorit

  TabsScreen(this.favoriteMeals);  //vai receber a lista e passar para a lista da classes TabsScreen

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {


  int _selectScreenIndex = 0;

  List<Map<String, Object>> _screens=[];

  @override
  void initState(){
    super.initState();
    _screens = [
   {  'title': 'Lista de Categorias','screen' :CategoriaScreen()},
   {  'title': 'Meus Favoritos','screen' : FavoriteScreen(widget.favoriteMeals)} //Agora sim passara a lista para a tela de favoritos
  ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectScreenIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectScreenIndex]['title'] as String, style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
           drawer: MainDrawer(),
      body: _screens[_selectScreenIndex]['screen'] as Widget,
       bottomNavigationBar: BottomNavigationBar(
                onTap: _selectScreen,
                backgroundColor: Colors.pink,
                selectedItemColor: Theme.of(context).hintColor,
                unselectedItemColor: Theme.of(context).canvasColor,
                currentIndex: _selectScreenIndex,
        items: const [
             BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
