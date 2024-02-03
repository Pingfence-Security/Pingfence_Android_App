import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true, // Make app bar transparent
        extendBody: true, // Extend body to avoid bottom padding
        body: Column(
          children: [
            Expanded(
              child: WebView(
                initialUrl: 'https://pingfence.com',
                javascriptMode: JavascriptMode.unrestricted,
              ),
            ),
            // Space for transparent notification area
            SizedBox(
              height: MediaQuery.of(context).padding.bottom,
            ),
          ],
        ),
      ),
    );
  }
}
