import 'package:flutter/material.dart';
import 'package:practice/model/listprovider/listproviderclass.dart';
import 'package:practice/screens/providerlistfile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ListProviderClass(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyAppName12(),
      ),
    ),
  );
}
