import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
class WebsiteScreen extends StatefulWidget {
  const WebsiteScreen({super.key});

  @override
  State<WebsiteScreen> createState() => _WebsiteScreenState();
}

class _WebsiteScreenState extends State<WebsiteScreen> {
  WebViewController controller = WebViewController();
  int progress = 0;
  
  @override
  void initState() {
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    controller.setNavigationDelegate(NavigationDelegate(
      onProgress: (value){
        setState(() {
          progress = value;
        });
      }
    ));
    controller.loadRequest(Uri.parse("http://google.come"));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          WebViewWidget(controller: controller,)
        ],
      ),
    );
  }
}
