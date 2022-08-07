import 'package:flutter/material.dart';

import 'Internet.dart';

class BotomNavbar2 extends StatefulWidget {
  const BotomNavbar2({Key? key}) : super(key: key);

  @override
  State<BotomNavbar2> createState() => _BotomNavbar2State();
}

class _BotomNavbar2State extends State<BotomNavbar2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: TabBar(
        controller: _tabController,
        labelColor: Colors.green,
        isScrollable: true,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.grey,
        indicatorSize: TabBarIndicatorSize.label,
        padding: EdgeInsets.zero,
        indicatorPadding: EdgeInsets.zero,
        labelPadding: EdgeInsets.symmetric(horizontal: 30),
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          color: Colors.grey,
          fontWeight: FontWeight.w700,
        ),
        labelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        tabs: const <Widget>[
          Icon(
            Icons.explore,
            size: 40,
          ),
          Icon(
            Icons.home,
            size: 40,
          ),
          Icon(
            Icons.location_city,
            size: 40,
          ),
          Icon(
            Icons.people,
            size: 40,
          ),
        ],
      ),
    );
  }
}
