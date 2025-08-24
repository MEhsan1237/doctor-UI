import 'package:flutter/material.dart';
import 'package:practice/screens/themescreen.dart';
import 'package:provider/provider.dart';

import 'model/newmethodprovider/providerclass.dart';
import 'model/themeprovider/themeproviderclass.dart';
void main()
{
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(
      create: (context)=>NewProviderMethod(),),
      ChangeNotifierProvider(create: (_)=> ThemeDataProvider()),

    ],
    child:  MyAppName3()
  ),
  );
}
class MyAppName3 extends StatelessWidget {
  const MyAppName3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeDataProvider = Provider.of<ThemeDataProvider>(context);
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch:  Colors.blue
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      themeMode: themeDataProvider.themeMode,
      debugShowCheckedModeBanner: false,

      home: ThemeScreen(),
    );
  }
}
