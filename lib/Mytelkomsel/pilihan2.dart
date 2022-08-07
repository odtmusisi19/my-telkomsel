import 'package:flutter/material.dart';

class Pilihan2 extends StatelessWidget {
  const Pilihan2({Key? key}) : super(key: key);
  Widget Pilih(isi) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(isi).size.width * 0.8,
          height: 150,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(left: 20, top: 20),
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                children: const [
                  Text(
                    "Rp. 28.000 ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(onPressed: null, child: Text("data"))
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 10),
          child: Material(
            borderRadius: BorderRadius.circular(9),
            color: Color.fromARGB(255, 126, 106, 106),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                splashColor: Colors.amber,
                onTap: () {},
                child: const Center(
                  child: Text(
                    "package",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Spesial Untuk Kamu',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
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
