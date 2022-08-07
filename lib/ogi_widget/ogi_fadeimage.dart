import 'package:flutter/material.dart';

class OgiFadeImage extends StatelessWidget {
  const OgiFadeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: GestureDetector(
            onTap: () => print('Berhasil di print'),
            child: FadeInImage.assetNetwork(
                imageScale: 1,
                fadeInCurve: Curves.bounceIn,
                fadeInDuration: Duration(seconds: 2),
                placeholder: 'placeholder',
                image:
                    'https://static.wikia.nocookie.net/naruto/images/7/70/Naruto_newshot.jpg/revision/latest?cb=20141107130405&path-prefix=id'),
          ),
        ),
      )),
    );
  }
}
