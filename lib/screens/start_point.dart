import 'package:flutter/material.dart';
import 'package:excursions_pokrovka/screens/info.dart';
import 'package:excursions_pokrovka/screens/excursion.dart';

class Excursion_Settings extends StatefulWidget {
  const Excursion_Settings({super.key, required this.title});

  final String title;

  @override
  State<Excursion_Settings> createState() => _ExcursionSettingsState();
}

late String selected_block;
late String selected_time;

class _ExcursionSettingsState extends State<Excursion_Settings> {
  Color avatarColor = Colors.white24;
  String blockAvatar = '?';
  Color textAvatarColor = Colors.grey;
  String timeAvatar = '?';

  void goToInfo() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Info(
                title: '',
              )),
    );
  }

  Widget DialogException(BuildContext context) {
    return AlertDialog(
      title: Text("Ошибка :("),
      content: Text("Вы не выбрали все параметры"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context, "OK");
            },
            child: Text(
              "OK",
              style: TextStyle(color: Color.fromARGB(255, 255, 142, 5)),
            ))
      ],
    );
  }

  void startExcursion() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Info(
                title: '',
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Конструктор маршрута"),
        backgroundColor: Color.fromARGB(255, 255, 142, 5),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: goToInfo, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/scheme.jpg"),
                      fit: BoxFit.cover)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: const Text('Точка старта'),
                    leading: CircleAvatar(
                        backgroundColor: avatarColor, child: Text(blockAvatar)),
                    subtitle: const Text('Выбрать пункт отправления'),
                    trailing: PopupMenuButton<String>(
                      onSelected: (String value) {
                        setState(() {
                          selected_block = value;
                          blockAvatar = "";
                          switch (value) {
                            case "purple":
                              avatarColor = Colors.purple;
                              break;
                            case "pink":
                              avatarColor = Colors.pinkAccent;
                              break;
                            case "orange":
                              avatarColor = Colors.orange;
                              break;
                            case "green":
                              avatarColor = Colors.green;
                              break;
                            case "blue":
                              avatarColor = Colors.blue;
                              break;
                          }
                          textAvatarColor = avatarColor;
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: "purple",
                          child: Text('Фиолетовая зона'),
                        ),
                        const PopupMenuItem<String>(
                          value: "pink",
                          child: Text('Розовая зона'),
                        ),
                        const PopupMenuItem<String>(
                          value: "orange",
                          child: Text('Оранжевая зона'),
                        ),
                        const PopupMenuItem<String>(
                          value: "green",
                          child: Text('Зеленая зона'),
                        ),
                        const PopupMenuItem<String>(
                          value: "blue",
                          child: Text('Голубая зона'),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: CircleAvatar(
                      child: Text(timeAvatar),
                      foregroundColor: textAvatarColor,
                      backgroundColor: Colors.white24,
                    ),
                    title: const Text('Время экскурсии'),
                    subtitle: const Text('Сколько будет идти экскурсия'),
                    trailing: PopupMenuButton<String>(
                      onSelected: (String value) {
                        setState(() {
                          selected_time = value;
                          timeAvatar = value;
                        });
                      },
                      itemBuilder: (BuildContext context) =>
                          <PopupMenuEntry<String>>[
                        const PopupMenuItem<String>(
                          value: "20",
                          child: Text('20'),
                        ),
                        const PopupMenuItem<String>(
                          value: "30",
                          child: Text('30'),
                        ),
                        const PopupMenuItem<String>(
                          value: "40",
                          child: Text('40'),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      if (selected_block == null || selected_time == null) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogException(context);
                            });
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Excursion(
                                    title: '',
                                  )),
                        );
                      }
                    },
                    child: Text(
                      "Начать экскурсию",
                      style: TextStyle(color: Color.fromARGB(255, 255, 142, 5)),
                    ),
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
