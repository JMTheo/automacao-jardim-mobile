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
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[700],
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          border:
              Border.all(color: Color(0xFF31A05F), style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              this.valor,
              style: kTemperaturTitle,
            ),
            SizedBox(
              height: 50,
            ),
            Text(this.titulo)
          ],
        ),
      ),
    );
  }
}
