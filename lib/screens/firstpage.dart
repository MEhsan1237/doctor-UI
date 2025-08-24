import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
    final String name;
   const FirstScreen({super.key, required this.name});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(widget.name),),
      body: Center(child:  TextButton(onPressed: () {
        Navigator.pop(context);

      },
      child: Text("First Screen")),),
    );
  }
}
