import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 170,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14)),
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 255, 7, 181),
          Color.fromARGB(255, 149, 13, 202),
          Color.fromARGB(255, 92, 26, 167),
          Color.fromARGB(255, 92, 26, 167),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 18,
          child: Container(
            color: Colors.white,
            height: 10,
          ),
        )
      ]),
    );
  }
}
