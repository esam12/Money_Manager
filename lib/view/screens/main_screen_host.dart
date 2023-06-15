import 'package:flutter/material.dart';

class MainScreenHost extends StatelessWidget {
  const MainScreenHost({super.key});

  buildContent(currentIndex) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home-1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home-1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home-1.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user-1.png'),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
