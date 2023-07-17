import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class ExcursionInfo extends StatefulWidget {
  const ExcursionInfo({super.key, required this.title});

  final String title;

  @override
  State<ExcursionInfo> createState() => _ExcInfoState();
}

class _ExcInfoState extends State<ExcursionInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Информация"),
          backgroundColor: Color.fromARGB(255, 255, 142, 5),
          foregroundColor: Colors.white,
        ),
        body: ListView(padding: EdgeInsets.all(15), children: [
          const SizedBox(
            height: 10,
          ),
          const Text("Навигация по Покровке",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          const SizedBox(height: 7),
          TextButton(onPressed: onPressed, child: Text("Навигация")),
          const SizedBox(
            height: 10,
          ),
        ]));
  }

  void onPressed() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => MyWebView(
              title: "Навигация",
              selectedUrl: "https://navigation.hse.ru/?campus=pokrovka",
            )));
  }
}

class MyWebView extends StatelessWidget {
  final String title;
  final String selectedUrl;

  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  MyWebView({
    required this.title,
    required this.selectedUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: WebView(
          initialUrl: selectedUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
