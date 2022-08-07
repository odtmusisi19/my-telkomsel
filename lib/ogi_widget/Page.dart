import 'package:flutter/material.dart';


class Page extends StatelessWidget {
  Widget Tombol(String text){
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
        child:ElevatedButton(onPressed: (){}, child: Text(text))
    );
  }

  const Page({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color background = Colors.black12;
    const Color fill = Colors.white;
    final List<Color> gradient = [
      background,
      background,
      fill,
      fill,
    ];
    const double fillPercent = 50; // fills 56.23% for container from bottom
    const double fillStop = (100 - fillPercent) / 100;
    final List<double> stops = [0.0, fillStop, fillStop, 1.0];
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    width: 390,
                    height: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red),
                      gradient: LinearGradient(
                        colors: gradient,
                        stops: stops,
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Rp. 1900", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                        const Text("aktif hingga 07 Okt 2022", style: TextStyle(fontSize: 14),),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Tombol("Beli Paket")
                          ],
                        )
                      ],
                    )

                ),
                Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    width: 390,
                    height: 390,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red),
                      gradient: LinearGradient(
                        colors: gradient,
                        stops: stops,
                        end: Alignment.bottomCenter,
                        begin: Alignment.topCenter,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Rp. 1900", style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),),
                        const Text("aktif hingga 07 Okt 2022", style: TextStyle(fontSize: 14),),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Tombol("Beli Paket")
                          ],
                        )
                      ],
                    )

                ),
              ],
            ),

            Container(
              // margin: EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              // width: 450,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red),
                gradient: LinearGradient(
                  colors: gradient,
                  stops: stops,
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
            )

          ],
        )
      ],
    );
  }
}
