import 'package:flutter/material.dart';
import 'package:travel_app/pages/guide_page.dart';
import 'package:travel_app/pages/home_page.dart';
import 'package:travel_app/pages/search_page.dart';
import 'package:travel_app/pages/trip_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  void navigationBottomNavbar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List children = const [
    HomePage(),
    SearchPage(),
    TripPage(),
    GuidePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink,
        currentIndex: selectedIndex,
        onTap: navigationBottomNavbar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.map_sharp), label: ''),
        ],
      ),
    );
  }
}
