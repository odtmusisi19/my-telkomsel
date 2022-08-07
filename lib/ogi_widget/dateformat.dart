import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OgiDateFormat extends StatelessWidget {
  const OgiDateFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        DateFormat.yMMMMEEEEd().format(DateTime.now()),
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
