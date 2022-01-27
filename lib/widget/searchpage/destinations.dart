import 'package:flutter/material.dart';

class Destinations extends StatelessWidget {
  const Destinations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("assets/images/tokyo.jpg", "Tokyo", "Japan"),
          items("assets/images/sydney.jpg", "Sydney", "Australia"),
          items("assets/images/amsterdam.jpg", "Amsterdan", "Netherland"),
        ],
      ),
    );
  }

  items(String img, String title, String subtitle) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: SizedBox(
        width: 130,
        child: Stack(
          children: [
            Wrap(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: image,
                      height: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
