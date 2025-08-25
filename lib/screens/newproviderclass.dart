import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/listprovider/listproviderclass.dart';

class NewFavouriteProviderClass extends StatefulWidget {
  const NewFavouriteProviderClass({super.key});

  @override
  State<NewFavouriteProviderClass> createState() => _NewFavouriteProviderClassState();
}

class _NewFavouriteProviderClassState extends State<NewFavouriteProviderClass> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ListProviderClass>(context);
    return  Scaffold(
      backgroundColor: Colors.grey.shade400,

      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true, title: Text("ProviderList"),actions: [

        Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.favorite)),
        )
      ],),
      body: ListView.builder(
        itemCount: provider.listItems.length,
        itemBuilder: (context, index) {
          final itemIndex = provider.listItems[index];
          return Consumer<ListProviderClass>(
            builder: (context, value, child) {
              return   ListTile(
                onTap: (){

                  (value.delete(itemIndex));

                },
                title: Text("item$index"),
                trailing: Icon(value.listItems.contains(itemIndex)?Icons.favorite:Icons.favorite_border_outlined),
              );
            },

          );
        },
      ),
    );
  }
}
