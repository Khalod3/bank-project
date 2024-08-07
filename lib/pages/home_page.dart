import 'package:bank_application/pages/card_page.dart';
import 'package:bank_application/pages/drawer_page.dart';
import 'package:bank_application/pages/profile_page.dart';
import 'package:bank_application/widget/home.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const Home(),
    const MyCardPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const NewDrawer(),
      body: pages[currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).colorScheme.surface,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, "Home", 0),
            tabItem(Icons.credit_card, "My Card", 1),
            tabItem(Icons.person, "Profile", 2),
          ],
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
      onPressed: () => onTabTapped(index),
      icon: Column(
        children: [
          Icon(
            icon,
            color: currentIndex == index
                ? const Color.fromARGB(255, 72, 71, 71)
                : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
                fontSize: 10,
                color: currentIndex == index
                    ? const Color.fromARGB(255, 72, 71, 71)
                    : Colors.grey),
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
