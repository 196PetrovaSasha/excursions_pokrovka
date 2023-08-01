import 'package:flutter/material.dart';
import 'package:excursions_pokrovka/screens/start_point.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key, required this.title});

  final String title;

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          children: [
            Container(
              height: 265,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/welcome.jpg"),
                      fit: BoxFit.cover)),
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
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/fcs_tree.jpg"),
                      opacity: 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Welcome на Покровку!",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          padding: const EdgeInsets.all(16.0),
                          width: 370,
                          height: 200,
                          child: const Text(
                            "Покровка — один из самых современных университетских "
                            "комплексов Москвы и России, где три огромных атриума связывают "
                            "исторические здания в единое вышкинское пространство. Дом "
                            "исследований, конференций, учебы и студенческой жизни Вышки, открытый городу.",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          )),
                      TextButton(
                        onPressed: onPressed,
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 255, 142, 5)),
                          overlayColor:
                              MaterialStateProperty.all(Colors.white70),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        child: const Text("Построить маршрут",
                        style: TextStyle(fontSize: 20),),
                      )
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }

  void onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Excursion_Settings(
                title: '',
              )),
    );
  }
}
