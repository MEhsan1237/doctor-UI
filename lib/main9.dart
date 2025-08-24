import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer/expensiontile.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppName7()));
}

class MyAppName7 extends StatefulWidget {
  const MyAppName7({super.key});

  @override
  State<MyAppName7> createState() => _MyAppName7State();
}

class _MyAppName7State extends State<MyAppName7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Home")),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/dp.one.png",)
                ),
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(CupertinoIcons.home),
                    title: Text("home"),
                  ),
                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 25,),
                    title: Text("Profile"),
                    leading: Icon(CupertinoIcons.person),
                    children: [
                      ExpansionItems(title: 'Change Password', onPress: (){},),
                      ExpansionItems(title: 'Change email', onPress: (){},),
                      ExpansionItems(title: 'delete account', onPress: (){},)
                    ],
                  ),
                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 25,),
                    title: Text("Settings"),
                    leading: Icon(CupertinoIcons.person),
                    children: [
                      ExpansionItems(title: 'Notifications', onPress: (){},),
                      ExpansionItems(title: 'app settings', onPress: (){},),
                      ExpansionItems(title: 'theme', onPress: (){},),
                      ExpansionItems(title: 'app lock', onPress: (){},),
                      ExpansionItems(title: 'privacy', onPress: (){},)
                    ],
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout),
                    title: Text("logout"),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
