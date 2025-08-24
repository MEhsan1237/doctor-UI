import 'package:flutter/material.dart';
 class ChatScreen extends StatelessWidget {
   const ChatScreen({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment:  CrossAxisAlignment.center,
         children: [
           Center(child: Text("Chat Screen"),),
           TextButton(onPressed: (){

             showModalBottomSheet(
               showDragHandle: true,

               context: context, builder:  (context) {
               return ListView(
                 children: [
                   ListTile(


                     leading: Icon(Icons.home),
                     title: Text("Home"),
                     subtitle: Text("This is a home"),
                     trailing: Icon(Icons.home_filled),
                     onTap: (){},
                   ),
                   ListTile(


                     leading: Icon(Icons.call),
                     title: Text("call"),
                     subtitle: Text("This is a call history"),
                     trailing: Icon(Icons.call_end),
                     onTap: (){},
                   ),
                   ListTile(
                     leading: Icon(Icons.settings),
                     title: Text("Settings"),
                     subtitle: Text("This is a setting history"),
                     trailing: Icon(Icons.settings_applications_sharp),
                     onTap: (){},
                   ),
                   ListTile(
                     leading: Icon(Icons.mobile_off),
                     title: Text("Mobile"),
                     subtitle: Text("This is mine  mobile"),
                     trailing: Icon(Icons.mobile_friendly_sharp),
                     onTap: (){},
                   ),ListTile(
                     leading: Icon(Icons.home),
                     title: Text("Home"),
                     subtitle: Text("This is a home"),
                     trailing: Icon(Icons.home_filled),
                     onTap: (){},
                   ),
                   ListTile(
                     leading: Icon(Icons.call),
                     title: Text("call"),
                     subtitle: Text("This is a call history"),
                     trailing: Icon(Icons.call_end),
                     onTap: (){},
                   ),
                   ListTile(
                     leading: Icon(Icons.settings),
                     title: Text("Settings"),
                     subtitle: Text("This is a setting history"),
                     trailing: Icon(Icons.settings_applications_sharp),
                     onTap: (){},
                   ),
                 ],
               );
             },);
           }, child: Text("type me"))
         ],
       ),
     );
   }
 }
 