import 'package:flutter/material.dart';
import 'package:mobile_jardim/components/bottom_card.dart';
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
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardPlant(
                      urlImg: 'assets/img/hortela.png',
                      apelidoPlanta: 'Cleitinho',
                      especiePlanta: 'Hortelã',
                      estadoLampada: true,
                      umidadeDoSolo: '90%',
                    ),
                    CardPlant(
                      urlImg: 'assets/img/planta-carnivora.png',
                      apelidoPlanta: 'Maria',
                      especiePlanta: 'Planta Carnívora',
                      estadoLampada: false,
                      umidadeDoSolo: '15%',

                    ),
                    CardPlant(
                      urlImg: 'assets/img/tomate.png',
                      apelidoPlanta: 'Matilda',
                      especiePlanta: 'Tomate',
                      estadoLampada: true,
                      umidadeDoSolo: '50%',

                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                child: Row(
                  children: [
                    BottomCard(
                      titulo: 'Temperatura do ambiente',
                      valor: '40 ºC',
                    ),
                    SizedBox(width: 10),
                    BottomCard(
                      titulo: 'Umidade do ambiente',
                      valor: '80%',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
