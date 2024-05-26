import 'package:app_refeicao/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    bool isSwitched = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
          backgroundColor: Theme.of(context).primaryColor
      ),
      body: Consumer<MyState>(
        builder: ( context,  tema, child) {  
        return Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            
            children: [           
              Row(
                children: [
                  Text('Tema Dark ', style: Theme.of(context).textTheme.titleLarge,),
                  
                  Switch(
              value: tema.isLight,
              onChanged: (value) {
                  tema.toggleTheme();
          
                              }
                  )
                ]
              )
            ],
          ),
        );
        }
      ),
    );
  }
}