import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyAppName1()));
}

class MyAppName1 extends StatelessWidget {
  const MyAppName1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(onPressed: (){}, child: Text("hi")),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              showDragHandle: true,
              context: context,
              builder:
                  (context) => ListView(
                    children: [
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                      Text("This is new Widget"),
                    ],
                  ),
            );
          },
          child: Text("ShowModelBottomSheet"),
        ),
      ),
    );
  }
}
