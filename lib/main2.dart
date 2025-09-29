import 'package:flutter/material.dart';
import 'package:practice/screens/callScreen.dart';
import 'package:practice/screens/chatScreen.dart';
import 'package:practice/screens/statusscreen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _selectedIndex =  0;
  final List  _screens = [
    ChatScreen(),
    CallScreen(),
    StatusScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:(value){
          setState(() {
            _selectedIndex=value;
          });
        },
        selectedItemColor: Colors.red,
        
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "hi"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "hello"),
          BottomNavigationBarItem(icon: Icon(Icons.safety_check),label: "hye"),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
