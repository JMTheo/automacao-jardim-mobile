import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobile_jardim/controller/controller.dart';

import 'package:mobile_jardim/components/bottom_card.dart';
import 'package:mobile_jardim/components/card_plant.dart';

final controller = Controller();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Automação Residencial')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Observer(builder: (_) {
                    return CardPlant(
                      urlImg: 'assets/img/hortela.png',
                      apelidoPlanta: 'Cleitinho',
                      especiePlanta: 'Hortelã',
                      estadoLampada: controller.estadoLampada,
                      umidadeDoSolo: controller.umidadeSolo,
                      functionL: controller.mudarEstadoLampada,
                    );
                  }),
                  CardPlant(
                    urlImg: 'assets/img/planta-carnivora.png',
                    apelidoPlanta: 'Maria',
                    especiePlanta: 'Planta Carnívora',
                    estadoLampada: controller.estadoLampada,
                    umidadeDoSolo: 15,
                  ),
                  CardPlant(
                    urlImg: 'assets/img/tomate.png',
                    apelidoPlanta: 'Matilda',
                    especiePlanta: 'Tomate',
                    estadoLampada: controller.estadoLampada,
                    umidadeDoSolo: 50,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                BottomCard(
                  titulo: 'Temperatura \ndo Ambiente',
                  valor: '${controller.temperatura}ºC',
                ),
                BottomCard(
                  titulo: 'Umidade \ndo Ar',
                  valor: '${controller.umidadeAr}%',
                ),
                BottomCard(titulo: 'Luminosidade', valor: '100%',)
              ],
            ),
          ),
        ],
      ),
    );
  }

}
