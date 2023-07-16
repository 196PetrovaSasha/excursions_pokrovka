import 'package:flutter/material.dart';
import 'package:excursions_pokrovka/entites/garf_builder.dart';

class Excursion extends StatefulWidget {
  const Excursion({super.key, required this.title});

  final String title;

  @override
  State<Excursion> createState() => _ExcursionState();
}

class _ExcursionState extends State<Excursion> {
  Widget CardWidget() {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 265,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(''), fit: BoxFit.cover)),
            ),
          ],
        ),
        ListView(
          children: [
            const SizedBox(
              height: 250,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  )),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
