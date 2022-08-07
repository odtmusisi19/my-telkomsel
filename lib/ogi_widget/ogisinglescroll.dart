import 'package:flutter/material.dart';

class OgiSingleScroll extends StatelessWidget {
  const OgiSingleScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.black,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.red,
            width: 200,
            height: 200,
          )
        ],
      ),
    );
  }
}
