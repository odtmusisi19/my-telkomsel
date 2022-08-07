import 'package:flutter/material.dart';

class PoinCard extends StatelessWidget {
  final String nama;
  final IconData ikon;
  const PoinCard({Key? key, required this.nama, required this.ikon})
      : super(key: key);

  Widget card(dynamic konteks, String text) {
    return SizedBox(
      width: MediaQuery.of(konteks).size.width * 0.8,
      height: 250,
      child: Stack(
        children: <Widget>[
          Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  width: 335,
                  height: 155,
                  child: Image.network(
                    'https://via.placeholder.com/300?text=OGI',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              height: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(50),
                    color: Color.fromARGB(255, 233, 233, 233),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 5),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(20),
                        splashColor: Color.fromARGB(100, 255, 255, 255),
                        onTap: () {
                          // ignore: avoid_print
                          print("Sekali Beli Berhasil");
                        },
                        child: const Center(
                          child: Text(
                            "Poin",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(ikon),
                    Text(
                      //TODO nama
                      nama,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "lihat semua",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                card(context, "Apakah Kamu Pemenangnya"),
                card(context, "Undi Undi hepi Mobil"),
                card(context, "Undi hepi Motor Honda"),
                card(context, "Undi Hepi Iphone 13"),
                card(context, "Undi Hepi Samsung A52"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
