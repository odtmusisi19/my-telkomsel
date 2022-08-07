import 'package:flutter/material.dart';

import '../../ogi_widget/OgiMyapp.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 122, 8, 8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Color.fromARGB(100, 255, 255, 255),
                  onTap: () {
                    // ignore: avoid_print
                    print("Aktifkan Point Berhasil");
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        "Aktifkan Poin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 122, 8, 8),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Color.fromARGB(100, 255, 255, 255),
                  onTap: () {
                    // ignore: avoid_print
                    print("Dayly check in Berhasil");
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        "Dayly check in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Content(),
        const SizedBox(
          height: 10,
        ),
        Content2()
      ],
    ));
  }
}
