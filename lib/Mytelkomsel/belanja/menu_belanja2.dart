import 'package:belajar/Mytelkomsel/belanja/Internet.dart';
import 'package:belajar/Mytelkomsel/belanja/menu_belanja.dart';
import 'package:belajar/Mytelkomsel/belanja/menu_belanja1.dart';
import 'package:belajar/Mytelkomsel/belanja/pilihpaket.dart';
import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  // define your tab controller here
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  const MenuBelanja(),
                  const MyWidget(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          "Pilih Paket Kuota",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 5),
                        child: TabBar(
                          controller: _tabController,
                          labelColor: Colors.black,
                          isScrollable: true,
                          indicatorColor: Colors.black,
                          unselectedLabelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          padding: EdgeInsets.zero,
                          indicatorPadding: EdgeInsets.zero,
                          indicator: const UnderlineTabIndicator(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 41, 127, 239),
                                  width: 5.0),
                              insets:
                                  EdgeInsets.fromLTRB(10.0, 0.0, 10.0, -20.0)),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 30),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
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
                              Icons.airplanemode_active,
                              size: 40,
                            ),
                            Icon(
                              Icons.play_circle_outline_outlined,
                              size: 40,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 40,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 1.0849,
                    child: TabBarView(
                      controller: _tabController,
                      children: <Widget>[
                        Paket(),
                        Container(
                          color: Colors.red,
                        ),
                        Container(
                          color: Colors.green,
                        ),
                        Container(
                          color: Colors.yellowAccent,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
