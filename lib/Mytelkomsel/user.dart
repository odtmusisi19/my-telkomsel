import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  Widget pilihan(String text, IconData ikon) {
    return Column(
      children: [
        const Divider(
          height: 1,
          thickness: 1,
        ),
        ListTile(
          leading: Icon(ikon),
          title: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.keyboard_arrow_right),
          // ignore: avoid_print
          onTap: () => print("Berhasil"),
          // shape: const RoundedRectangleBorder(
          //   side: BorderSide(color: Colors.black, width: 0.3),
          // ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            margin: const EdgeInsets.only(top: 15),
            // padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(backgroundColor: Colors.red),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Ogi darma tena",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "085333799648",
                                style: TextStyle(fontSize: 17),
                              ),
                              Text(
                                "PUK1 4523-4423 26472837  PUK2 2345-3452 94871263",
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: GestureDetector(
                              onTap: (() => print("Berhasil")),
                              child: const Icon(
                                Icons.edit_note_sharp,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => print("Berhasil"),
                          child: const Text(
                            "Tambah Nomor",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        Icon(Icons.add_box_rounded)
                      ],
                    ),
                    pilihan("Paket dan Berlangganan",
                        Icons.mobile_screen_share_rounded),
                    const Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.payment,
                      ),
                      title: const Text(
                        "Metode Pembayaran",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.all(20),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Icon(
                                  Icons.open_with,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Hubungkan",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.blue),
                                )
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.open_with,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Hubungkan",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      // ignore: avoid_print
                      onTap: () => print("Berhasil"),
                    ),
                    pilihan("Pengaturan Langganan Netfilx", Icons.logo_dev),
                    pilihan("Riwayat Transaksi", Icons.history),
                    pilihan("Tentang Masa Aktif", Icons.saved_search_rounded),
                    pilihan("Pusat Bantuan", Icons.headphones),
                    pilihan("Voucher Fisik", Icons.voicemail_outlined),
                    pilihan("Bahasa", Icons.mobile_screen_share_rounded),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
