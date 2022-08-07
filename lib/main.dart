// import 'dart:developer';
import 'dart:convert' as convert;
import 'dart:developer';

import 'package:belajar/ALL_OGI_WIDGET.dart';
import 'package:belajar/ogi_widget/ogi_cliprreact_N_hero.dart';
import 'package:belajar/ogi_widget/ogi_fadeimage.dart';
import 'package:belajar/ogi_widget/ogi_font_awsome.dart';
import 'package:belajar/ogi_widget/ogi_google_navbar.dart';
import 'package:belajar/ogi_widget/ogiswitch.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'ogi_widget/OgiMyapp.dart';

void main(List<String> arguments) async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // brightness: Brightness.dark,
          // visualDensity: VisualDensity.standard,
          // appBarTheme: const AppBarTheme(
          //     color: Colors.amber,
          //     shadowColor: Colors.black,
          //     foregroundColor: Colors.pink),
          ),
      home: OgiApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final myAppBar = AppBar(
      title: const Text("Media Query"),
      backgroundColor: Color.fromARGB(255, 255, 0, 0),
    );
    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Container(
              //Now you can use MediaQuery
              width: MediaQuery.of(context).size.width,
              height: bodyHeight * 0.3,
              color: Colors.black,
              child: TextButton(
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(200, 40)),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(fontSize: 24)),
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
                onPressed: () {
                  print(bodyHeight.toInt());
                },
                onLongPress: () => print("ANDA MENAHAN TOMBOL DENGAN LAMA"),
                child: Text("KLIK"),
              ),
            ),
            Container(
              height: bodyHeight * 0.7,
              child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: ((context, index) => ListTile(
                        leading: CircleAvatar(child: Text(index.toString())),
                        title: Text("Data ke - ${index}"),
                      ))),
            )
          ],
        ));
  }
}
