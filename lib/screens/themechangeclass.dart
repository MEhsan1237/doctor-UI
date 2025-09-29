import 'package:flutter/material.dart';
import 'package:practice/model/thememodeprovider/themeproviderclass.dart';
import 'package:provider/provider.dart';

class MyAppName13 extends StatefulWidget {
  const MyAppName13({super.key});

  @override
  State<MyAppName13> createState() => _MyAppName13State();
}

class _MyAppName13State extends State<MyAppName13> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("ThemeMode Change")),
      body: Center(
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: const Text("Light Theme"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: (mode) {
                if (mode != null) {
                  themeChanger.setTheme(mode);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text("Dark Theme"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: (mode) {
                if (mode != null) {
                  themeChanger.setTheme(mode);
                }
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text("System Default"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: (mode) {
                if (mode != null) {
                  themeChanger.setTheme(mode);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
