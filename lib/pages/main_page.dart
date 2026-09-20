import 'package:flutter/material.dart';
import 'package:infinite_verse/pages/home_page.dart';
import 'package:infinite_verse/widgets/globals/custom_navbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    Placeholder(child: Text("Create Novel & Character")),
    Placeholder(child: Text("Profile")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(index: _currentIndex, children: _pages),

          Positioned(
            left: 20,
            right: 20,
            bottom: 15,
            child: SafeArea(
              child: CustomNavbar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
