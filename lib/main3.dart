import 'package:flutter/material.dart';
import 'package:practice/maindirectory/homescreen.dart';
import 'package:practice/maindirectory/profilescreen.dart';
import 'package:practice/maindirectory/settingscreen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen()));
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen2(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Main Drawer")),
      key: globalKey,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Hi Ehsan!")),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              onTap: () {
                globalKey.currentState?.closeDrawer();

                setState(() {
                  _currentIndex = 0;
                });
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: () {
                globalKey.currentState?.closeDrawer();

                setState(() {
                  _currentIndex = 1;
                });
              },

              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              onTap: () {
                globalKey.currentState?.closeDrawer();

                setState(() {
                  _currentIndex = 1;
                });
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
