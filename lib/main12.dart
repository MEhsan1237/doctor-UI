import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/components/myColor.dart';

import 'dashboard/widgets/listtileuiclass.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppName10()));
}

class MyAppName10 extends StatelessWidget {
  const MyAppName10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
         scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Text(
              "User Profile",
              style: TextStyle(
                color: MyColors.specialPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/dp.one.png")),
            Text(
              "Muhammad Ehsan",
              style: TextStyle(
                color: MyColors.specialPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "mehsan4270@gmail",
              style: TextStyle(
                color: MyColors.specialPrimary,
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Row(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 65,
                  height: 25,
                  decoration: BoxDecoration(

                    color: MyColors.superSecondary.withOpacity(0.3),
                  ),
                  child: Center(
                    child: Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: MyColors.specialPrimary,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(

                    color: MyColors.superSecondary.withOpacity(0.3),
                  ),
                  child: Center(
                    child: Text(
                      "Share Profile",
                      style: TextStyle(
                        color: MyColors.specialPrimary,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 40,
                  height: 25,
                  decoration: BoxDecoration(

                    color: MyColors.superSecondary.withOpacity(0.3),
                  ),
                  child: Icon(Icons.person_add_alt,size: 16,),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              decoration: BoxDecoration(

                color: MyColors.superSecondary.withOpacity(0.3),
              ),
              child: ListTileUiClass(
                title: 'Muhammad',
                subtitle: 'First name',
                leadingIcon: Icon(Icons.person),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              decoration: BoxDecoration(

                color: MyColors.superSecondary.withOpacity(0.3),
              ),
              child: ListTileUiClass(
                title: 'Ehsan',
                subtitle: 'Second name',
                leadingIcon: Icon(Icons.person),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              decoration: BoxDecoration(

                color: MyColors.superSecondary.withOpacity(0.3),
              ),
              child: ListTileUiClass(
                title: 'mehsan4270@gmail',
                subtitle: 'Email',
                leadingIcon: Icon(Icons.email),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              decoration: BoxDecoration(

                color: MyColors.superSecondary.withOpacity(0.3),
              ),
              child: ListTileUiClass(
                title: 'Multan. Punjab. pakistan',
                subtitle: 'Address',
                leadingIcon: Icon(Icons.location_on_outlined,),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
              decoration: BoxDecoration(

                color: MyColors.superSecondary.withOpacity(0.3),
              ),
              child: ListTileUiClass(
                title: 'LogOut',
                subtitle: 'close Account',
                leadingIcon: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
