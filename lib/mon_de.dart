import 'dart:math';

import 'package:flutter/material.dart';

class MonDe extends StatefulWidget {
  const MonDe({super.key});

  @override
  State<MonDe> createState() => _MonDeState();
}

class _MonDeState extends State<MonDe> {
  var face = 1;

  void tourne() {
    var nom = Random().nextInt(6) + 1;
    setState(() {
      face = nom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Vous avez joue: $face"),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/dice-$face.png',
          width: 150,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(onPressed: tourne, child: const Text("Relancez le de"))
      ],
    );
  }
}
