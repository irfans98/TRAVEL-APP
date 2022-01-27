import 'package:flutter/material.dart';

class Foto extends StatelessWidget {
  const Foto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("assets/images/pantai.jpeg"),
          items("assets/images/bandara.jpeg"),
          items("assets/images/pantai.jpeg"),
        ],
      ),
    );
  }

  items(String img) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 10),
      child: SizedBox(
        width: 150,
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(image: image),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
