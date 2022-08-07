import 'package:flutter/material.dart';

class OgiTextField extends StatefulWidget {
  const OgiTextField({Key? key}) : super(key: key);
  @override
  State<OgiTextField> createState() => _OgiTextFieldState();
}

final TextEditingController mycontroler = TextEditingController();
String text = "this text";

class _OgiTextFieldState extends State<OgiTextField> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.bottom,
            controller: mycontroler,
            onChanged: (value) {
              setState(() {
                text = value;
              });
            },
            onSubmitted: (value) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("CONFIRM"),
                      content: Text("are you sure to delete this item ?"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              // print("berhasil");
                              Navigator.of(context).pop();
                            },
                            child: Text("yes")),
                        TextButton(
                            onPressed: () {
                              // print("berhasil");
                              Navigator.of(context).pop();
                            },
                            child: Text("No"))
                      ],
                    );
                  });
            },
            autofocus: true,
            autocorrect: true,
            keyboardType: TextInputType.text,
          ),
          Text(
            text,
          )
        ],
      ),
    );
  }
}
