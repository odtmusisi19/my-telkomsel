import 'package:belajar/Mytelkomsel/poin/poin_card.dart';
import 'package:flutter/material.dart';

class Poin extends StatelessWidget {
  const Poin({Key? key}) : super(key: key);

  Widget box(IconData ikon, String text) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.5),
                blurRadius: 4.0, // soften the shadow
                spreadRadius: 0.0, //extend the shadow
                // offset: Offset(
                //   0.0, // Move to right 10  horizontally
                //   0.0, // Move to bottom 10 Vertically
                // ),
              )
            ],
          ),
          child: Center(child: Icon(ikon)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(text)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                color: Colors.grey,
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Poin",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 9),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  splashColor: Colors.white,
                                  onTap: () {
                                    // ignore: avoid_print
                                    print("Sekali Beli Berhasil");
                                  },
                                  child: const Center(
                                    child: Text(
                                      "Silver",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () => print("Simpan Berhasil"),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => print("Edit Berhasil"),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.mode_edit_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => print("Search Berhasil"),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    box(Icons.store_outlined, "jalan - jalan"),
                    box(Icons.mobile_friendly, "telko"),
                    box(Icons.food_bank_outlined, "kuliner"),
                    box(Icons.local_hospital_sharp, "Kesehatan"),
                    box(Icons.drag_indicator_outlined, "Lainnya"),
                  ],
                ),
              ),
              const PoinCard(
                nama: "Berbagai Pilihan Menanti",
                ikon: Icons.star,
              ),
              const PoinCard(
                nama: "Undi Undi Hepi",
                ikon: Icons.no_luggage_outlined,
              ),
              const PoinCard(
                  nama: "Cuan Hepi Back to School", ikon: Icons.payment),

              // PoinCard(),
            ],
          )
        ],
      ),
    );
  }
}
