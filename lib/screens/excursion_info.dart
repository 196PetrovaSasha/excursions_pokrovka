import 'package:flutter/material.dart';

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
        body: ListView(padding: EdgeInsets.all(15), children: const [
          SizedBox(
            height: 10,
          ),
          Text("Навигация по Покровке",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          SizedBox(height: 7),
          SizedBox(
            height: 10,
          ),
        ]));
  }
}
