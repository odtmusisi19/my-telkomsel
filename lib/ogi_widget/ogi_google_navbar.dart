import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class OgiGoogleNavbar extends StatelessWidget {
  const OgiGoogleNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isHOme = false;
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade800,
              gap: 10,
              onTabChange: (index) {
                // print(index);
                switch (index) {
                  case 0:
                    isHOme = true;
                    break;
                }
              },
              padding: EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'home',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'like',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'cari',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'settings',
                )
              ]),
        ),
      ),
      body: Center(
        child: Text("Ogi darma tena"),
      ),
    );
  }
}
