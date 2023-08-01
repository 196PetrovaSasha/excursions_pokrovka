import 'package:excursions_pokrovka/entites/garf_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:excursions_pokrovka/entites/tags.dart';

var placesList = [
  Card1(),
  Card2(),
  Card3(),
  Card4(),
  Card5(),
  Card6(),
  Card7(),
  Card8()
];

Widget Card1() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/places/F.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Кафе и переговорная",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[0],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[1],
              const SizedBox(
                height: 3,
              ),
              chips[2],
              const SizedBox(
                height: 3,
              ),
              chips[3]
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card2() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/places/stairway.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Мраморная лестница",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[1],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[0],
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card3() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/places/atrium.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Атриум",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[2],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[0],
              const SizedBox(
                height: 3,
              ),
              chips[2],
              const SizedBox(
                height: 3,
              ),
              chips[4]
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card4() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/places/library.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Столовая и библиотека",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[3],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[0],
              const SizedBox(
                height: 3,
              ),
              chips[2],
              const SizedBox(
                height: 3,
              ),
              chips[4]
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card5() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("images/places/Cov.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Коворкинг",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[4],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[2],
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card6() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/places/S.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Корпуса S, R",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[5],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[2],
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card7() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("images/places/kc.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Культурный центр",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[6],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[0],
              const SizedBox(
                height: 3,
              ),
              chips[4],
              const SizedBox(
                height: 3,
              ),
              chips[5],
            ],
          )
        ],
      ),
    ),
  )));
}

Widget Card8() {
  return MaterialApp(
      home: Scaffold(
          body: Container(
    padding: EdgeInsets.all(20),
    child: Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.5),
            blurRadius: 7,
          ),
        ],
      ),
      child: ListView(
        children: [
          Container(
            height: 200,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("images/places/gym.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Зал",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          const Divider(),
          const Text(
            "Описание",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 13,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Text(
            desc[7],
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 12,
            ),
          ),
          const Divider(),
          const Text(
            "Теги",
            style: TextStyle(
                color: Color.fromARGB(188, 21, 17, 17),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          const Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chips[0],
              const SizedBox(
                height: 3,
              ),
              chips[4],
              const SizedBox(
                height: 3,
              ),
              chips[5],
            ],
          )
        ],
      ),
    ),
  )));
}
