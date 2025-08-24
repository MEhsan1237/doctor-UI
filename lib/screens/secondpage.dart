import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String name;
  final String email;
  const SecondScreen({super.key, required this.name, required this.email});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: TextButton(onPressed: ()
                {
                  Navigator.pop(context);

            }, child: Text("second Screen")),

          ),
          SizedBox(height: 20,),
          Text(widget.name),
          Text(widget.email),
        ],
      ),

    );
  }
}
