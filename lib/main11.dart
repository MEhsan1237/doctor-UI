import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer/expensiontile.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppName9()));
}

class MyAppName9 extends StatelessWidget {
  const MyAppName9({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.w400),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(

              backgroundImage: AssetImage("assets/images/dp.one.png"),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                width: double.infinity,
                child: CircleAvatar(
                  radius: 60,

                  foregroundImage: AssetImage("assets/images/dp.one.png",),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(CupertinoIcons.home),
                    title: Text("home"),
                  ),
                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 25),
                    title: Text("Profile"),
                    leading: Icon(CupertinoIcons.person),
                    children: [
                      ExpansionItems(title: 'Change Password', onPress: () {}),
                      ExpansionItems(title: 'Change email', onPress: () {}),
                      ExpansionItems(title: 'delete account', onPress: () {}),
                    ],
                  ),
                  ExpansionTile(
                    childrenPadding: EdgeInsets.only(left: 25),
                    title: Text("Settings"),
                    leading: Icon(CupertinoIcons.person),
                    children: [
                      ExpansionItems(title: 'Notifications', onPress: () {}),
                      ExpansionItems(title: 'app settings', onPress: () {}),
                      ExpansionItems(title: 'theme', onPress: () {}),
                      ExpansionItems(title: 'app lock', onPress: () {}),
                      ExpansionItems(title: 'privacy', onPress: () {}),
                    ],
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.logout),
                    title: Text("logout"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 8),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),

              boxShadow: [BoxShadow(color: Colors.brown, spreadRadius: 0.4)],
            ),

            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "what are yoe looking for?",
                prefixIcon: Icon(Icons.search, size: 30),
              ),

              controller: controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(

              height: 120,
              width:double.infinity,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(

                  image: AssetImage("assets/images/doctors.four.png"),
                  fit: BoxFit.cover, // image ko container ke andar adjust karega
                ),
              ),
            )

          ),

          Container(
           width: double.infinity,
            child: ListTile(
              leading: Text(
                "Top Doctors",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              trailing: Icon(Icons.filter_list_rounded,color: Colors.black,),
            ),
          ),
          Expanded(
            child: GridView.builder(
              
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
               return Container(
                 margin: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: Colors.white70,



                     borderRadius: BorderRadius.circular(18),
                 ),
                 child: Center(
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       CircleAvatar(
                         radius: 50,

                         backgroundImage: AssetImage("assets/images/doctor.one.png"),
                       ),
                       SizedBox(height: 6,),
                       Text("Sample Doctor"),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:
                           List.generate(5, (index)=>Icon(Icons.star,color: Colors.amber,size: 20,))
                         ,
                       )
                     ],
                   ),
                 ),
               );
            },),
          )
        ],
      ),
    );
  }
}
