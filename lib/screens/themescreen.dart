import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/themeprovider/themeproviderclass.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 👇 theme ko dekhne ke liye watch use hoga
    final themeProvider = context.watch<ThemeDataProvider>();

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("ThemeModeChange")),
      body: Column(
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Light"),
                Switch(
                  value: themeProvider.themeMode == ThemeMode.dark, // watch se value bind
                  onChanged: (value) {
                    // 👇 action ke liye read use hoga
                    context.read<ThemeDataProvider>().changeTheme(
                      value ? ThemeMode.dark : ThemeMode.light,
                    );
                  },
                ),
                const Text("Dark"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
