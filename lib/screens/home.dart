import 'package:flutter/material.dart';
import 'package:mobile_jardim/components/card_plant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Automação Residencial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Show Snackbar',
            onPressed: () {
              print('opa');
            },
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 400.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CardPlant(urlImg: 'assets/img/hortela.png', apelidoPlanta: 'Cleitinho', especiePlanta: 'Hortelã',),
            CardPlant(urlImg: 'assets/img/planta-carnivora.png', apelidoPlanta: 'Maria', especiePlanta: 'Planta Carnívora',),
            CardPlant(urlImg: 'assets/img/tomate.png', apelidoPlanta: 'Matilda', especiePlanta: 'Tomate',),
          ],
        ),
      ),
    );
  }
}

