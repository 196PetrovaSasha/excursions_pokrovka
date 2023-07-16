import 'package:flutter/material.dart';
import 'package:excursions_pokrovka/screens/info.dart';

class Excursion_Settings extends StatefulWidget {
  const Excursion_Settings({super.key, required this.title});

  final String title;

  @override
  State<Excursion_Settings> createState() => _ExcursionSettingsState();
}

class _ExcursionSettingsState extends State<Excursion_Settings> {

  String? selected_block;
  int? selected_time;

  Widget blockButton(String name) {
    return SizedBox(
      height: 35,
      width: 60,
      child: ElevatedButton(onPressed: () {
        selected_block = name;
      },
          child: Text(name),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.white24),
            foregroundColor: MaterialStateProperty.all(Colors.black54),
            side: MaterialStateProperty.all(
                const BorderSide(width: 1, color: Colors.black38)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          )
      ),
    );
  }

  Widget timeButton(int time) {
    return SizedBox(
      height: 35,
      width: 90,
      child: ElevatedButton(onPressed: () {
        selected_block = time.toString();
      },
          child: Text(time.toString()),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
            overlayColor: MaterialStateProperty.all(Colors.white24),
            foregroundColor: MaterialStateProperty.all(Colors.black54),
            side: MaterialStateProperty.all(
                const BorderSide(width: 1, color: Colors.black38)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Конструктор маршрута"),
        backgroundColor: Colors.grey,
        actions: [
          IconButton(
              onPressed: goToInfo, icon: const Icon(Icons.info_outline))
        ],
      ),
      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
        height: 350,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/building_scheme.jpg"),
                fit: BoxFit.cover)),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            const Text("Корпус отправления",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blockButton("R"),
                blockButton("S"),
                blockButton("M"),
                blockButton("N"),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blockButton("D"),
                blockButton("G"),
                blockButton("F"),
                blockButton("K"),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                blockButton("A"),
                blockButton("Z"),
                blockButton("T"),
                blockButton("L"),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Время на экскурсию",
              style: TextStyle(
                fontSize: 17,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                timeButton(20),
                timeButton(30),
                timeButton(40)
              ],
            )
          ],
        ),
      ),
      ElevatedButton(onPressed: startExcursion,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            overlayColor: MaterialStateProperty.all(Colors.white70),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        child: const Text(
              "Построить маршрут"
        ),
      ),
        ]
      ),
    );
  }


  void goToInfo() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
          const Info(
            title: '',
          )),
    );
  }

  void startExcursion() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
          const Info(
            title: '',
          )),
    );
  }
}
