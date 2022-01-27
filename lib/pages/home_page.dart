import 'package:flutter/material.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'package:travel_app/widget/homepage/destinations/cars.dart';
import 'package:travel_app/widget/homepage/destinations/flight.dart';
import 'package:travel_app/widget/homepage/destinations/hotels.dart';
import 'package:travel_app/widget/homepage/destinations/taxi.dart';
import 'package:travel_app/widget/homepage/foto/foto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 400,
                  child: Image(
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                    image: AssetImage("assets/images/home.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 30, right: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfilePage(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/images/OP.jpeg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.qr_code, color: Colors.white),
                      const SizedBox(width: 20),
                      const Icon(Icons.notifications, color: Colors.white),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Where's your",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "next destination?",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const DestinationFlight(),
                const DestinationHotel(),
                const DestinationCars(),
                const DestinationTaxi(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 26, bottom: 10),
              child: Text(
                "DEALS",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
                    child: const Text(
                      "ALL",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                const Text(
                  "Flights",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 24),
                const Text(
                  "Hotels",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 24),
                const Text(
                  "Transportations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Foto()
            // Container(child: Foto())
          ],
        ),
      ),
    );
  }
}
