import 'package:belajar/Mytelkomsel/belanja/menu_belanja2.dart';
import 'package:flutter/material.dart';

import 'belanja.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      onTap: (int index) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyTabBar(),
        ));
      },
      elevation: 5.0,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red),
            label: 'Beranda',
            backgroundColor: Color.fromARGB(255, 221, 216, 216)),
        BottomNavigationBarItem(
          icon: Icon(Icons.cabin, color: Colors.red),
          label: 'Poin',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard, color: Colors.red),
          label: 'Belanja',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_off, color: Colors.red),
          label: 'Jelajah',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, color: Colors.red),
          label: 'Menu',
        ),
      ],
    );
  }
}
