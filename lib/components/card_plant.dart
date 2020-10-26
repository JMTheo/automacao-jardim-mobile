import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mobile_jardim/components/mini_card.dart';
import 'package:mobile_jardim/constants.dart';

class CardPlant extends StatefulWidget {
  CardPlant(
      {@required this.urlImg,
      this.apelidoPlanta,
      this.especiePlanta,
      this.estadoLampada,
      this.umidadeDoSolo});

  final String urlImg;
  final String apelidoPlanta;
  final String especiePlanta;
  String umidadeDoSolo;
  bool estadoLampada;

  @override
  _CardPlantState createState() => _CardPlantState();
}

class _CardPlantState extends State<CardPlant> {
  _mudarLuz() {
    return this.widget.estadoLampada
        ? FontAwesomeIcons.solidLightbulb
        : FontAwesomeIcons.lightbulb;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 300.0,
      decoration: BoxDecoration(
        color: kDefaultColorGreen,
        border: Border.all(color: kDefaultColorGreen, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[700],
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              widget.urlImg,
              height: 200.0,
              width: 200.0,
            ),
          ),
          SizedBox(height: 80.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              widget.apelidoPlanta,
              style: kSubTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
            child: Text(
              widget.especiePlanta,
              style: kHighTitle,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              MiniCard(
                content: widget.umidadeDoSolo,
              ), //Dado sensor de umidade de solo
              MiniCard(
                content: FontAwesomeIcons.tint,
              ), //Acionar manualmente a agua
              MiniCard(
                content: _mudarLuz(),
                onTap: () {
                  print('luz');
                  setState(() {
                    this.widget.estadoLampada = !this.widget.estadoLampada;
                  });
                },
              ), //Desligar a luz do ambiente
              MiniCard(
                content: FontAwesomeIcons.question,
                onTap: () {
                  print('Interrogação');
                },
              ), //Ir para página da planta
            ],
          )
        ],
      ),
    );
  }
}
