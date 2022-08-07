import 'package:belajar/Mytelkomsel/belanja.dart';
import 'package:belajar/Mytelkomsel/belanja/beranda.dart';
import 'package:belajar/Mytelkomsel/belanja/menu_belanja2.dart';
import 'package:belajar/Mytelkomsel/belanja/navbarbotom.dart';
import 'package:belajar/Mytelkomsel/poin/poin.dart';
import 'package:belajar/Mytelkomsel/bottomnavbar.dart';
import 'package:belajar/Mytelkomsel/user.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../Mytelkomsel/belanja/Internet.dart';
import '../Mytelkomsel/pilihan1.dart';
import '../Mytelkomsel/pilihan2.dart';

class OgiApp extends StatefulWidget {
  const OgiApp({Key? key}) : super(key: key);

  @override
  State<OgiApp> createState() => _OgiAppState();
}

class _OgiAppState extends State<OgiApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        // color: Colors.white,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: TabBar(
            controller: _tabController,
            labelColor: Color.fromARGB(255, 255, 0, 0),
            isScrollable: true,
            indicatorColor: Colors.transparent,
            unselectedLabelColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.label,
            padding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.symmetric(horizontal: 22.5),
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
                Icons.home_filled,
                size: 35,
                semanticLabel: "home",
              ),
              Icon(
                Icons.phone_iphone,
                size: 35,
              ),
              Icon(
                Icons.card_travel,
                size: 35,
              ),
              Icon(
                Icons.travel_explore_sharp,
                size: 35,
              ),
              Icon(
                Icons.person_outline_sharp,
                size: 35,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.red,
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          const Beranda(),
          Poin(),
          MyTabBar(),
          MyTabBar(),
          // MyTabBar(),
          User(),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
          height: 250.0,
          enableInfiniteScroll: false,
          initialPage: 0,
          pageSnapping: true),
      items: [1, 2].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(17),
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Rp 2000',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'aktif hingga 07 okt 2022',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(9),
                            color: Color.fromARGB(255, 173, 168, 168),
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Color.fromARGB(100, 255, 255, 255),
                                onTap: () {
                                  // ignore: avoid_print
                                  print("Sekali Beli Berhasil");
                                },
                                child: const Center(
                                  child: Text(
                                    "Sekali Beli",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // ignore: avoid_print
                            print("isi pulsa berhsail");
                          },
                          child: const Text(
                            'Isi Pulsa',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            // ignore: avoid_print
                            print("Kirim Hadiah berhsail");
                          },
                          child: const Text(
                            'Kirim Hadiah',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Material(
                                borderRadius: BorderRadius.circular(9),
                                child: Container(
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor:
                                        Color.fromARGB(100, 255, 255, 255),
                                    onTap: () {
                                      // ignore: avoid_print
                                      print("Sekali Beli Berhasil");
                                    },
                                    child: const Center(
                                      child: Text(
                                        "Internet",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Aktif Hingga 05 juli 2020',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                        Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(9),
                            child: Container(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Color.fromARGB(100, 255, 255, 255),
                                onTap: () {
                                  // ignore: avoid_print
                                  print("Sekali Beli Berhasil");
                                },
                                child: const Center(
                                  child: Text(
                                    "2.3 / 11 gb",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Material(
                                borderRadius: BorderRadius.circular(9),
                                child: Container(
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    splashColor:
                                        Color.fromARGB(100, 255, 255, 255),
                                    onTap: () {
                                      // ignore: avoid_print
                                      print("Sekali Beli Berhasil");
                                    },
                                    child: const Center(
                                      child: Text(
                                        "Multimedia",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'Anda Tidak Memiliki Kuota',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.black),
                            ),
                          ],
                        ),
                        Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(9),
                            child: Container(
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Color.fromARGB(100, 255, 255, 255),
                                onTap: () {
                                  // ignore: avoid_print
                                  print("Sekali Beli Berhasil");
                                },
                                child: const Center(
                                  child: Text(
                                    "Belum Dibeli",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ));
          },
        );
      }).toList(),
    );
  }
}

class Content2 extends StatelessWidget {
  const Content2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _size = MediaQuery.of(context).size;
    return Container(
        width: _size.width,
        padding: EdgeInsets.all(10),
        height: _size.height * 1.4,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Pilihan(),
            SizedBox(
              height: 30,
            ),
            Pilihan2(),
          ],
        ));
  }
}
