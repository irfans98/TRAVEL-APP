import 'package:flutter/material.dart';

class AboutTravel extends StatelessWidget {
  const AboutTravel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items("assets/images/budget.jpg", "Budget Travel"),
          items("assets/images/abroad.jpg", "First-time Abroad"),
          items("assets/images/masker.jpg", "Safe Travel"),
        ],
      ),
    );
  }

  items(String img, String title) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 10),
      child: SizedBox(
        width: 100,
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
                      height: 140,
                      width: 100,
                      fit: BoxFit.cover,
                      color: const Color.fromRGBO(165, 165, 165, 0.9),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 90),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
