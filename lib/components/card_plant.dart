import 'package:flutter/material.dart';
import 'package:mobile_jardim/constants.dart';

class CardPlant extends StatelessWidget {
  CardPlant({@required this.urlImg, this.apelidoPlanta, this.especiePlanta});

  final String urlImg;
  final String apelidoPlanta;
  final String especiePlanta;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: 300.0,
      decoration: BoxDecoration(
        color: Color(0xFF31A05F),
        border: Border.all(color: Color(0xFF31A05F), style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              urlImg,
              height: 200.0,
              width: 200.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              apelidoPlanta,
              style: kSubTitle,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
            child: Text(
              especiePlanta,
              style: kHighTitle,
            ),
          ),
          Row(
            children: [
              // TODO: Adionar os itens abaixo
              // Dado sensor de umidade de solo
              // Acionar manualmente a agua
              // Desligar a luz do ambiente
            ],
          )
        ],
      ),
    );
  }
}
