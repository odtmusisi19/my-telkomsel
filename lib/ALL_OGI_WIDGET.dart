import 'package:flutter/material.dart';

class OgiFitBox extends StatelessWidget {
  const OgiFitBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ogi FitBox")),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 500,
          height: 200,
          child: FittedBox(
            alignment: Alignment.centerRight,
            fit: BoxFit.contain,
            child: Image.network(
                "https://yt3.ggpht.com/ytc/AKedOLR96-gkMZddQhnJQBcDieajyMr9Laq22fI_ijB_jw=s900-c-k-c0x00ffffff-no-rj"),
          ),
        ),
      ),
    );
  }
}
