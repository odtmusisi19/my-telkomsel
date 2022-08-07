import 'package:belajar/Mytelkomsel/belanja/Internet.dart';
import 'package:belajar/Mytelkomsel/belanja/menu_belanja.dart';
import 'package:belajar/Mytelkomsel/belanja/menu_belanja1.dart';
import 'package:flutter/material.dart';

class Paket extends StatefulWidget {
  @override
  _PaketState createState() => _PaketState();
}

class _PaketState extends State<Paket> with SingleTickerProviderStateMixin {
  // define your tab controller here
  Widget paket(isi, String text, String namaPaket) {
    return Container(
      width: MediaQuery.of(isi).size.width * 0.94,
      height: 150,
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 216, 212),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(100, 36, 37, 37),
              offset: Offset(
                0.0,
                6.0,
              ),
              blurRadius: 4.0,
              spreadRadius: 0.2,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            namaPaket,
            style: TextStyle(fontSize: 14),
          ),
          Text(
            "Rp. $text | 30 Hari",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp. $text ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 10),
                child: Material(
                  borderRadius: BorderRadius.circular(9),
                  color: Color.fromARGB(255, 173, 168, 168),
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget namaPaket(String namaPaket) {
    return Center(
        child: Column(
      children: [
        paket(context, "28.000", namaPaket),
        paket(context, "10.000", namaPaket),
        paket(context, "16.000", namaPaket),
        paket(context, "50.000", namaPaket),
      ],
    ));
  }

  Widget pilihPaket(String text) {
    return Container(
      margin: const EdgeInsets.only(left: 0, top: 0),
      child: Material(
        borderRadius: BorderRadius.circular(5),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: Color.fromARGB(255, 121, 121, 121)),
              borderRadius: BorderRadius.circular(5)),
          // margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: InkWell(
            borderRadius: BorderRadius.circular(5),
            splashColor: Color.fromARGB(100, 255, 255, 255),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                    color: Color.fromARGB(255, 121, 121, 121), fontSize: 15),
              ),
            ),
          ),
        ),
      ),
    );
  }

  late TabController _tabController;

  @override
  void initState() {
    // initialise your tab controller here
    _tabController = TabController(length: 7, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
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
            labelPadding: const EdgeInsets.symmetric(horizontal: 10),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.w700,
            ),
            labelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            tabs: <Widget>[
              pilihPaket('Internet Sakti'),
              pilihPaket('Combo Sakti'),
              pilihPaket('Giga net'),
              pilihPaket('Internet OMG'),
              pilihPaket('Paket 4g'),
              pilihPaket('Paket zoom pro'),
              pilihPaket('Kuota Ketengan'),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              InternetSakti(),
              ComboSakti(),
              namaPaket("Giga net"),
              namaPaket("Internet Omg"),
              namaPaket("Paket 4G"),
              namaPaket("Paket zoom pro"),
              namaPaket("Kuota Ketengan"),
            ],
          ),
        ),
      ],
    );
  }
}
