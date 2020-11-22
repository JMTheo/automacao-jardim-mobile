import 'package:flutter/material.dart';
import 'package:mobile_jardim/constants.dart';

class BottomCard extends StatelessWidget {
  BottomCard({this.titulo, this.valor});

  final String valor;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: kActiveCardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              this.valor,
              style: kNumbersTextStyle,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              this.titulo,
              style: kLabelTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
