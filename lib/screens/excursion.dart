import 'package:flutter/material.dart';
import 'package:excursions_pokrovka/entites/garf_builder.dart';
import 'package:excursions_pokrovka/entites/cards.dart';
import 'package:excursions_pokrovka/screens/start_point.dart';

class Excursion extends StatefulWidget {
  const Excursion({super.key, required this.title});

  final String title;

  @override
  State<Excursion> createState() => _ExcursionState();
}

class _ExcursionState extends State<Excursion> {
  List<int> pointList =
      grafFinalBuilding(int.parse(final_select_time), final_select_block);

  Widget endScreen() {
    return Scaffold(
        body: Center(
            child: Container(
                height: 300,
                child: Image(image: AssetImage("images/poka.jpg")))));
  }

  List<Widget> listBuild() {
    List<Widget> final_list = [];
    for (int el in pointList) {
      final_list.add(placesList[el]);
    }
    final_list.add(endScreen());
    return final_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 142, 5),
          foregroundColor: Colors.white,
        ),
        body: PageView(
          children: listBuild(),
        ));
  }
}
