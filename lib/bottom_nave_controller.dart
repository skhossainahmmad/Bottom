import 'package:botton/pages/chat_screen.dart';
import 'package:botton/pages/home_sereen.dart';
import 'package:botton/pages/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNaveController extends StatefulWidget {
  const BottomNaveController({super.key});

  @override
  State<BottomNaveController> createState() => _BottomNaveControllerState();
}

class _BottomNaveControllerState extends State<BottomNaveController> {
  int _currentIndex = 0;
  final _pagess = [
    HomeScreen(),
    SearchScreen(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            _currentIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          ]),
      body: _pagess[_currentIndex],
    );
  }
}
