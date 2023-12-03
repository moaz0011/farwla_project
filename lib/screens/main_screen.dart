import 'package:flutter/material.dart';

import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 1;

  final List<Widget> _pages = [
    const Center(child: Text('Settings Page')),
    const HomeScreen(),
    const Center(child: Text('Profile Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF242424),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,
                color: selectedIndex == 0 ? Colors.white : Colors.grey),
            label: 'Settings',
          ),
                    BottomNavigationBarItem(
            backgroundColor:
                Colors.white, // Remove this line, as it is unnecessary
            icon: Icon(Icons.home,
                color: selectedIndex == 1 ? Colors.white : Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
                color: selectedIndex == 2 ? Colors.white : Colors.grey),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor:
            Colors.white, // Add this line to set the selected item text color
        unselectedItemColor:
            Colors.grey, // Add this line to set the unselected item text color
        onTap: _onItemTapped,
      ),
    );
  }
}
