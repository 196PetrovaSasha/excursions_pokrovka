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
          Text("Как выбрать точку отправления",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          SizedBox(height: 7),
          Text(
              "- Для определения корпуса, в котором вы сейчас находитесь, "
                  "посмотрие на табличку с буквой корпуса или на номер ближайшего "
                  "кабинета (буква вначале и есть корпус)",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          Text("- Филетовая зона: D, G, F, K",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 4),
          Text("- Розовая зона: A, L",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 4),
          Text("- Оранжевая зона: M, N",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 4),
          Text("- Зеленая зона: R, S",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(height: 4),
          Text("- Голубая зона: T, Z",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          SizedBox(
            height: 10,
          ),
          Text("Время",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              )),
          SizedBox(height: 7),
          Text(
              "- При расчете не учитывается дорога до нужного вам после "
                  "экскурсии корпуса, это надо закладывать отделно",
              style: TextStyle(fontSize: 12, color: Colors.grey)),
        ]));
  }
}