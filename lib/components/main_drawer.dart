import 'package:app_refeicao/data/dummy_data.dart';
import 'package:app_refeicao/screens/all_meals.dart';
import 'package:app_refeicao/screens/categories_meals_screen.dart';
import 'package:app_refeicao/screens/categories_screen.dart';
import 'package:app_refeicao/screens/settings_screens.dart';
import 'package:flutter/material.dart';
import '../utils/app_routes.dart';
import 'package:app_refeicao/main.dart';



class MainDrawer extends StatelessWidget {
  List<String>? vazia;

  Widget _createItem(IconData icon, String label,  onTap) {
  return GestureDetector(
    onTap: onTap, // Chama a função passada quando o ícone é pressionado
    child: ListTile(
      leading: Icon(icon),
      title: Text(label),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.bottomLeft,
          color: Theme.of(context).hintColor,
          child: const Text(
            "Vamos Cozinhar?",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.pink,
            ),
          ),
        ),
      _createItem(
  Icons.restaurant, 
  'Refeições',
  () => Navigator.push(context, MaterialPageRoute(builder: (context) => AllMeals(refeicoes: DUMMY_MEALS),
      ),
    ),
),
          _createItem(
          Icons.settings, 
          'Configurações',
      () => Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen())) 
      
          ),
      ],
      ),
    );
  }
}
