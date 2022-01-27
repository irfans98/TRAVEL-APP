import 'package:flutter/material.dart';

class TripPage extends StatefulWidget {
  const TripPage({Key? key}) : super(key: key);

  @override
  _TripPageState createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Trip Plan",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    padding: const EdgeInsets.only(
                      bottom: 5, // Space between underline and text
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.pink,
                          width: 1.0, // Underline thickness
                        ),
                      ),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.work_outline,
                          color: Colors.pink,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Trips",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                Row(
                  children: const [
                    Icon(Icons.bookmark_outline),
                    Text(
                      "Bookmark",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/hochiminh.jpg",
                        height: 200,
                        width: 350,
                        fit: BoxFit.cover,
                        color: const Color.fromRGBO(165, 165, 165, 0.9),
                        colorBlendMode: BlendMode.modulate,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Ho Chi Minh City",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Wed, 29 Dec - 31 Dec",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 160,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.bookmark,
                              color: Colors.pink,
                              size: 30,
                            ),
                            Text(
                              "5 Items",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "5 days left",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 110,
                  width: 330,
                  color: Colors.red.shade100,
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 15, right: 10, top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Here's a Checklist for you trip",
                              style: TextStyle(
                                color: Colors.red.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                size: 35,
                                color: Colors.red.shade900,
                              ),
                            )
                          ],
                        ),
                        const Text(
                          "As your up coming destination has some travel restrictions due to COVID-19",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Icon(
              Icons.add_circle,
              color: Colors.red,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
