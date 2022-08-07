import 'dart:math';

import 'package:flutter/material.dart';

class OgiPageView extends StatelessWidget {
  const OgiPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(255),
              Random().nextInt(255), Random().nextInt(255)),
        );
      },
    );
  }
}
