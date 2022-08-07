import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);
  Widget Pilih(isi) {
    return Container(
      width: MediaQuery.of(isi).size.width * 0.8,
      height: 150,
      padding: EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20, top: 20, bottom: 30),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 216, 212),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(100, 36, 37, 37),
              offset: Offset(
                7.0,
                4.0,
              ),
              blurRadius: 9.0,
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
          const Text(
            "Rp. 28.000 | 30 Hari",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Rp. 28.000 ",
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
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Spesial Untuk Kamu',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Pilih(context),
                Pilih(context),
                Pilih(context),
                Pilih(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
