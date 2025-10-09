import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/services.dart';

class ClipBordFileScreen extends StatefulWidget {
  const ClipBordFileScreen({super.key});

  @override
  State<ClipBordFileScreen> createState() => _ClipBordFileScreenState();
}

class _ClipBordFileScreenState extends State<ClipBordFileScreen> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ClipBord Screen", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body: GestureDetector(
        onDoubleTap: () {
          FlutterClipboard.copy("copy text").then((value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Center(child: Text("Text have Copied",textAlign: TextAlign.center,)),
                backgroundColor: Colors.red,
              ),
            );
          });
        },
        child: Center(child: Text("Copy Text this is a text of  mine",textAlign: TextAlign.center,),),
      ),
    );
  }
}


