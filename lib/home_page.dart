import 'package:flutter/material.dart';
import 'package:level_2/pages/add_page.dart';

import 'package:level_2/pages/discover_page.dart';
import 'package:level_2/pages/home.dart';
import 'package:level_2/pages/live_page.dart';
import 'package:level_2/pages/profile_page.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int myIndex = 0;
  final PageController pageController = PageController(); // Add this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          // Your Home Page
          Home(),
          DiscoverPage(),
          AddPage(),
          LivePage(),
          ProfilePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            myIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        unselectedItemColor: const Color.fromARGB(255, 116, 114, 6),
        selectedItemColor: Colors.yellow,
        currentIndex: myIndex,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Discover',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: '',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv),
            label: 'Live',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
