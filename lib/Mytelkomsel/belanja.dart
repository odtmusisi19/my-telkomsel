import 'package:belajar/Mytelkomsel/belanja/menu_belanja1.dart';
import 'package:belajar/Mytelkomsel/bottomnavbar.dart';
import 'package:flutter/material.dart';

class Belanja extends StatelessWidget {
  const Belanja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 132, 131, 129),
          bottomNavigationBar: const BottomNavbar(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              MyWidget(),
            ],
          )),
    );
  }
}
