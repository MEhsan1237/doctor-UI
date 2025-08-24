import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/newmethodprovider/providerclass.dart';

class NewScreenProviderWay extends StatelessWidget {
  const NewScreenProviderWay({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,backgroundColor: Colors.blueGrey,
        title: Text("Increment Decrement"),),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.watch<NewProviderMethod>().number.toString())
        ],
      ),),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(onPressed: (){
            debugPrint("hello");
            context.read<NewProviderMethod>().incrementNumber();

          },child: Icon(Icons.add),),
          SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){
            debugPrint("hey");
            context.read<NewProviderMethod>().decrementNumber();
          },child: Icon(Icons.remove),)
        ],
      ),
    );
  }
}
