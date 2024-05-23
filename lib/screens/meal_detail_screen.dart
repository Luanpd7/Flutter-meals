import 'package:app_refeicao/main.dart';
import 'package:app_refeicao/models/favorites.dart';
import 'package:app_refeicao/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MealDetailScreen extends StatelessWidget {




  Widget _createSectionTitle(BuildContext context, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget _createSectionContainer(Widget child) {
    return Container(
      width: 330,
      height: 250,
      padding:  const  EdgeInsets.all(10),
      margin:  const  EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
        appBar: AppBar(
          title: Text("Detalhe da refeição"),
          backgroundColor: Colors.pink,
        ),
        body: SingleChildScrollView(
          child: Consumer<Favorites>(
            builder: (context, favoritos, _) {
              return Column(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      meal.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  _createSectionTitle(context, "Ingredients"),
                  _createSectionContainer(
                    ListView.builder(
                      itemCount: meal.ingredients!.length,
                      itemBuilder: ((context, index) {
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 10,
                            ),
                            child: Text(meal.ingredients![index]),
                          ),
                          color: Theme.of(context).hintColor,
                        );
                      }),
                    ),
                  ),
                  _createSectionTitle(context, "Passos"),
                  _createSectionContainer(ListView.builder(
                    itemCount: meal.steps!.length,
                    itemBuilder: (ctx, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              child: Text('${index + 1}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              backgroundColor: Colors.red,
                            ),
                            title: Text(meal.steps![index]),
                          ),
                          Divider(),
                        ],
                      );
                    },
                  ))
                ],
              );
            }
          ),
        ),
         floatingActionButton: Consumer<Favorites>(
        builder: (context, favorites, child) {
          return FloatingActionButton(
            child: Icon(
              favorites.isFavorite(meal) ? Icons.star : Icons.star_border,
            ),
            onPressed: () {
              favorites.togglerFavorite(meal);
            },
          );
        },
      ),
    );
  }
}

          
        
        
        


      
  