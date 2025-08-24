import 'package:flutter/material.dart';
import 'package:practice/model/model.dart';
import 'package:practice/screens/providermain.dart';
import 'package:provider/provider.dart';

import 'model/noteprovider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => NoteProvider(),
      child: MaterialApp(

        routes: {
          "secondScreen": (context) => ProviderMain(),
        },
        home: MyAppName2(),
        debugShowCheckedModeBanner: false,

      ),
    ),
  );
}

class MyAppName2 extends StatefulWidget {
  const MyAppName2({super.key});

  @override
  State<MyAppName2> createState() => _MyAppName2State();
}

class _MyAppName2State extends State<MyAppName2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Provider Details"),
      ),
      body: Consumer<NoteProvider>(
        builder: (context, provider, child) {
          debugPrint("hello");
          if (provider.notes.isEmpty) {
            return const Center(child: Text("No notes yet"));
          }
          return
            ListView(
            children: [
              for (NoteModel note in provider.notes)
                ListTile(
                  title: Text(note.name),
                  subtitle: Text(note.desc),
                  trailing: IconButton(
                    onPressed: () {
                      provider.deleteNote(note);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "secondScreen");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
