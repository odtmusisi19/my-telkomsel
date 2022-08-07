import 'dart:math';

import 'package:flutter/material.dart';

class OgiGridView extends StatelessWidget {
  final List<Container> mylist = List.generate(90, (index) {
    int hex1 = Random().nextInt(255);
    int hex2 = Random().nextInt(255);
    int hex3 = Random().nextInt(255);

    return Container(
      child: Text(
        index.toString(),
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, hex1, hex2, hex3),
      ),
    );
  });

  // const OgiGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ogi Grid ")),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 16 / 9),
        children: mylist,
      ),
    );
  }
}
