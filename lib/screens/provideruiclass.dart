import 'package:flutter/material.dart';
import 'package:practice/model/sliderprovider/sliderproviderclass.dart';
import 'package:provider/provider.dart';

class MyAppName11 extends StatefulWidget {
  const MyAppName11({super.key});

  @override
  State<MyAppName11> createState() => _MyAppName11State();
}

class _MyAppName11State extends State<MyAppName11> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("SliderProvider"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderClassProvider>(
              builder: (BuildContext context, value, Widget? child) {

                return
                Slider(
                    min: 0,
                    max: 1.0,
                    value: value.value, onChanged: (val){
                  print("hello");
                  value.setValue(val);
                });
              },

            ),
            SizedBox(height: 10,),
             Consumer<SliderClassProvider>(builder: (context, value, child) {
               return Row(
                 children: [
                   Expanded(
                     child: Container(
                       height: 90,
                       decoration: BoxDecoration(
                           color: Colors.blue.withOpacity(value.value)
                       ),
                       child: Center(child: Text("Container1", style: TextStyle(
                           color: Colors.black,
                           fontSize: 20,
                           fontWeight: FontWeight.w900
                       ),)),
                     ),
                   ),
                   Expanded(
                     child: Container(
                       height: 90,
                       decoration: BoxDecoration(
                           color: Colors.red.withOpacity(value.value)
                       ),
                       child: Center(child: Text("Container2", style: TextStyle(
                           color: Colors.black,
                           fontSize: 20,
                           fontWeight: FontWeight.w900
                       ),)),
                     ),
                   ),
                 ],
               );
             },),
        
          ],
        ),
      ),
    );
  }
}
