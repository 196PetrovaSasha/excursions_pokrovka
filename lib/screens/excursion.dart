import 'package:excursions_pokrovka/screens/excursion_info.dart';
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

  var pointList = grafFinalBuilding(int.parse(selected_time), selected_block);

  List<Widget> listBuild() {
    List<Widget> final_list = [];
    for(int el in pointList) {
      final_list.add(placesList[el]);
    }
    return final_list;
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 142, 5),
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: onPressed, icon: Icon(Icons.info))
        ]
      ),
      body: PageView(
        controller: controller,
        children: listBuild(),
      )
    );
  }

  void onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const ExcursionInfo(
            title: '',
          )),
    );
  }
}
