import 'package:flutter/material.dart';

class OgiSwitch extends StatefulWidget {
  const OgiSwitch({Key? key}) : super(key: key);

  @override
  State<OgiSwitch> createState() => _OgiSwitchState();
}

class _OgiSwitchState extends State<OgiSwitch> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ogi Switch")),
      body: Center(
        child: Column(
          children: [
            Switch(
                activeColor: Colors.blue,
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = !isSwitch;
                  });
                  if (isSwitch == true) {
                    // print("object");
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("OGI DARMA TENA \n Berhasil"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Yes")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);

                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text("Apakah Anda Yakin ?"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {},
                                                  child: Text("z")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text("No")),
                                            ],
                                          );
                                        });
                                  },
                                  child: Text("No"))
                            ],
                          );
                        });
                  }
                }),
            Text(
              isSwitch ? "Switch On" : "Switch OFF",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
