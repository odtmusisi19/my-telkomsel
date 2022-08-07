import 'package:flutter/material.dart';

class InternetSakti extends StatelessWidget {
  const InternetSakti({Key? key}) : super(key: key);
  Widget internet(isi, String text) {
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
          const Text(
            "Internet Sakti",
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

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        internet(context, "28.000"),
        internet(context, "10.000"),
        internet(context, "16.000"),
        internet(context, "50.000"),
      ],
    ));
  }
}

class ComboSakti extends StatelessWidget {
  const ComboSakti({Key? key}) : super(key: key);
  Widget internet(isi, String text) {
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
          const Text(
            "Combo Sakti",
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Column(
            children: [
              internet(context, "25.000"),
              internet(context, "45.000"),
              internet(context, "75.000"),
              internet(context, "50.000"),
            ],
          )
        ],
      ),
    );
  }
}
