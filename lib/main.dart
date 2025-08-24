import 'package:flutter/material.dart';
import 'package:practice/screens/firstpage.dart';
import 'package:practice/screens/secondpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => MyAppPractice(),
    },
    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case "/FirstPage":
          String name = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) => FirstScreen(name: name),
          );

        case "/SecondPage":
          Map data = settings.arguments as Map;
          return MaterialPageRoute(
            builder: (context) => SecondScreen(
              name: data["name"],
              email: data["email"],
            ),
          );
      }
      return null;
    },
  ));
}

class MyAppPractice extends StatefulWidget {
  const MyAppPractice({super.key});

  @override
  State<MyAppPractice> createState() => _MyAppPracticeState();
}

class _MyAppPracticeState extends State<MyAppPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/FirstPage", arguments: "Ali");
              },
              child: Text("Home Page for first"),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/SecondPage",
                  arguments: {
                    "name": "Ali Bilal",
                    "email": "gmail.com",
                  },
                );
              },
              child: Text("Home Page for second"),
            ),
          ),
        ],
      ),
    );
  }
}
