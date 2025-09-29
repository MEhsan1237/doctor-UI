import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebsiteScreen extends StatefulWidget {
  const WebsiteScreen({super.key});

  @override
  State<WebsiteScreen> createState() => _WebsiteScreenState();
}

class _WebsiteScreenState extends State<WebsiteScreen> {
  late final WebViewController controller;
  int progress = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (value) {
            setState(() {
              progress = value;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse("https://www.google.com"));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // Handle back button for webview navigation
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false; // prevent exiting app
        }
        return true; // exit app
      },
      child: Scaffold(
        body: Column(
          children: [
            // Show progress bar while loading
            if (progress < 100 && progress > 0)
              LinearProgressIndicator(value: progress / 100),
            // WebView
            Expanded(child: WebViewWidget(controller: controller)),
          ],
        ),
      ),
    );
  }
}
