import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OgiFontAwesome extends StatelessWidget {
  const OgiFontAwesome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.apple,
              size: 100,
              semanticLabel: "Apple",
              color: Color.fromARGB(255, 0, 40, 93),
              // key: Key(toString()),
            )),
      ),
    );
  }
}
