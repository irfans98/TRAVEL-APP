import 'package:flutter/material.dart';
import 'package:travel_app/widget/guidepage/about.dart';
import 'package:travel_app/widget/guidepage/article.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  _GuidePageState createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Guide",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    "MIGHT NEED THESE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              ),
              const AboutTravel(),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey.shade300,
                    child: Row(
                      children: [
                        Text(
                          "A country, a place.. or anything",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.search,
                          size: 25,
                          color: Colors.pink,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text(
                "TOP-PICK ARTICLES",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const TopArticle(),
            ],
          ),
        ),
      ),
    );
  }
}
