import 'package:flutter/material.dart';

class DisMisAbleFileScreen extends StatefulWidget {
  const DisMisAbleFileScreen({super.key});

  @override
  State<DisMisAbleFileScreen> createState() => _DisMisAbleFileScreenState();
}

class _DisMisAbleFileScreenState extends State<DisMisAbleFileScreen> {
  List fruits = ["Mango", "Banana", "Apple", "Great Fruit", "Grapes"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Screen", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:
          fruits.isNotEmpty
              ? ListView.separated(
                itemBuilder: (context, index) {
                  return
                  Dismissible(
                    key: Key(fruits[index]),
                    onDismissed: (direction) {
                      fruits.removeAt(index);
                    },
                    background: Container(color: Colors.deepOrange),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Text("${index + 1}"),
                      ),
                      title: Text(fruits[index]),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            fruits.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ),
                  );

                },
                separatorBuilder:
                    (context, index) =>
                        Container(height: 1, color: Colors.blue),
                itemCount: fruits.length,
              )
              : Center(child: Text("No Data", textAlign: TextAlign.center)),
    );
  }
}
