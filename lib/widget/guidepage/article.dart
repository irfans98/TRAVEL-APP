import 'package:flutter/material.dart';

class TopArticle extends StatelessWidget {
  const TopArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          items(
            "assets/images/eropa.jpg",
            "Experience",
            "Beautifull Alley Scene in Old Town in Europe at Sunset",
          ),
          items(
            "assets/images/shopping.jpg",
            "Shopping",
            "The Ultimate Guide to Shopping for Travel",
          ),
        ],
      ),
    );
  }

  items(String img, String tag, String title) {
    AssetImage image = AssetImage(img);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 230,
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
                        height: 120,
                        width: 220,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: 30,
                    width: 30,
                    color: const Color.fromRGBO(255, 255, 255, 0.4),
                    child: const Icon(
                      Icons.bookmark_border_sharp,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
