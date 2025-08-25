import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/listprovider/listproviderclass.dart';
import 'newproviderclass.dart';

class MyAppName12 extends StatefulWidget {
  const MyAppName12({super.key});

  @override
  State<MyAppName12> createState() => _MyAppName12State();
}

class _MyAppName12State extends State<MyAppName12> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade400,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true, title: Text("ProviderList"),actions: [

        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NewFavouriteProviderClass(),));
              },
              child: Icon(Icons.favorite)),
        )
      ],),
      body: Expanded(
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (context, index) {
            return Consumer<ListProviderClass>(
              builder: (context, value, child) {
                return   ListTile(
                  onTap: (){
                    if (value.listItems.contains(index)){
                    value.delete(index);
                    }
                    else {
                        value.addList(index);
                    }
                  },
                  title: Text("item$index"),
                  trailing: Icon(value.listItems.contains(index)?Icons.favorite:Icons.favorite_border_outlined),
                );
              },

            );
          },
        ),
      ),
    );
  }
}
