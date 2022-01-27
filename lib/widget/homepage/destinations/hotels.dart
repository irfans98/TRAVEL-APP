import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:travel_app/pages/profile_page.dart';

class DestinationHotel extends StatelessWidget {
  const DestinationHotel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 115, top: 290),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ),
          );
        },
        child: Column(
          children: [
            GlassmorphicContainer(
              width: 60,
              height: 60,
              borderRadius: 20,
              blur: 3,
              alignment: Alignment.bottomCenter,
              border: 2,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.1),
                  const Color(0xFFFFFFFF).withOpacity(0.05),
                ],
                stops: const [0.1, 1],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFffffff).withOpacity(0.5),
                  const Color((0xFFFFFFFF)).withOpacity(0.5),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.hotel,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Hotels",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
