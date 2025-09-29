import 'package:flutter/material.dart';


import 'screen_free/settingsscreen.dart';
import 'screen_free/homescreen.dart';
import 'screen_free//profilescreen.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomTapScree(),
  ));
}


class BottomTapScree extends StatefulWidget {
  const BottomTapScree({super.key});

  @override
  State<BottomTapScree> createState() => _BottomTapScreeState();
}

class _BottomTapScreeState extends State<BottomTapScree> {
  int _selectedItem = 0;
  final List<Widget> _list = [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue, ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepPurple,
          currentIndex: _selectedItem,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: (value){
            setState(() {
              _selectedItem = value;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      ]),
      body: _list[_selectedItem],
    );
  }
}
