import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/model/sliderprovider/sliderproviderclass.dart';
import 'package:practice/screens/provideruiclass.dart';
import 'package:provider/provider.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent
  ));
  runApp(

      ChangeNotifierProvider(
        create: (_)=>SliderClassProvider(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyAppName11(),
          ),
      ));
}
