import 'package:flutter/material.dart';

class NearbyAttractions extends StatelessWidget {
  const NearbyAttractions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          items("assets/images/singapura.jpg", "Marina Bay", "Singapore"),
          items("assets/images/singapura.jpg", "Marina Bay", "Singapore"),
        ],
      ),
    );
  }

  items(String img, String title, String subtitle) {
    AssetImage image = AssetImage(img);
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 5),
      child: SizedBox(
        width: 420,
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
                      height: 150,
                      width: 370,
                      fit: BoxFit.cover,
                      color: const Color.fromRGBO(165, 165, 165, 0.6),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 40,
                    color: Colors.pink,
                    child: const Center(
                      child: Text(
                        "HOTEL",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      height: 40,
                      width: 40,
                      color: const Color.fromRGBO(255, 255, 255, 0.4),
                      child: const Icon(
                        Icons.bookmark_border_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125, right: 10, left: 10),
              child: Row(
                children: const [
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.star, color: Colors.yellow),
                  Spacer(),
                  Text(
                    "337 per night",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
