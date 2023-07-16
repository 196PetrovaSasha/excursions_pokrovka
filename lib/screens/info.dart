import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key, required this.title});

  final String title;

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
              "Информация"
          ),
          backgroundColor: Colors.grey,
        ),
        body: ListView(
          padding: EdgeInsets.all(15),
          children: const [
            SizedBox(
              height: 10,
            ), Text("Как выбрать точку отправления",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            )),
            SizedBox(height: 7),
            Text("- Для определения корпуса, в котором вы сейчас находитесь, "
                "посмотрие на табличку с буквой корпуса или на номер ближайшего "
                "кабинета (буква вначале и есть корпус)",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              )
            ),
            SizedBox(height: 4),
            Text("- Схема наверху подскажет, как расположены корпуса, и как они "
                "расположены относительно станции метро Чкаловская (к Китай городу"
                " и Чистым прудам ближе всего расположен корпус D",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                )
            ),
            SizedBox(
              height: 10,
            ), Text("Время",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
            SizedBox(height: 7),
            Text("- При расчете не учитывается дорога до нужного вам после "
                "экскурсии корпуса, это надо закладывать отделно",
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey
                )
            ),
          ]
        )
    );
  }
}
