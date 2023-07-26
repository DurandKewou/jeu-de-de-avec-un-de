import 'package:flutter/material.dart';

import 'mon_de.dart';

class ContainairAvecGradiant extends StatelessWidget {
  const ContainairAvecGradiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Colors.green, Colors.pink, Colors.red],
            begin:Alignment.bottomLeft,
            end: Alignment.topCenter,
      ),
      ),
      child: const Center(child: MonDe()),
    );
  }
}
