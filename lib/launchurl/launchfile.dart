import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LaunchFileScreen extends StatefulWidget {
  const LaunchFileScreen({super.key});

  @override
  State<LaunchFileScreen> createState() => _LaunchFileScreenState();
}

class _LaunchFileScreenState extends State<LaunchFileScreen> {
  Uri googleLink = Uri.parse("https://www.google.com");
  Uri telLink = Uri( scheme: 'tel',path: "20020280823");
  Uri mailLink = Uri(scheme: 'mailto',path: 'ehsan');
  Uri smsLink = Uri(scheme: 'sms',path: '3000300390');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()async{
              await launchUrl(googleLink);
            }
                , child: Text("Google")),
            ElevatedButton(onPressed: ()async{
              await launchUrl(telLink);
            }
                , child: Text("MobilePhone")),
            ElevatedButton(
                onPressed: ()async{
              await launchUrl(mailLink);
              Navigator.pop(context);
            }
                , child: Text("Email")),
            ElevatedButton(onPressed: ()async{
              await launchUrl(smsLink);
            }
                , child: Text("messenger")),
          ],
        ),
      )
    );
  }
}
