import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratcherFileClass extends StatefulWidget {
  const ScratcherFileClass({super.key});

  @override
  State<ScratcherFileClass> createState() => _ScratcherFileClassState();
}

class _ScratcherFileClassState extends State<ScratcherFileClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switcher Screen"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 5,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),

        itemBuilder: (context, index) {
          return Scratcher(
            brushSize: 20,
            threshold: 20,

            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2)
                  ),
                  child: Center(child: Text("show me")),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
