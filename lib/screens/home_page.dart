import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/screens/login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nomesInstrumentos = ['kailani', 'narciso'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromARGB(255, 1, 1, 32),
          Color.fromARGB(255, 1, 1, 32),
          Color.fromARGB(255, 41, 70, 114),
        ],
      )),
      child: Container(
          child: Scaffold(backgroundColor: Colors.transparent, body: _page())),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 200),
                    items: [
                      'assets/images/kailani.png',
                      'assets/images/narciso.png'
                    ].map((i) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 0.50),
                          child: Column(
                            children: [
                              Image.asset(i),
                              const SizedBox(
                                height: 10,
                              ),
                              if (i == 'assets/images/kailani.png')
                                Text(
                                  nomesInstrumentos[0],
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                              if (i == 'assets/images/narciso.png')
                                Text(
                                  nomesInstrumentos[1],
                                  style: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white),
                                ),
                            ],
                          ),
                        );
                      });
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget layoutHome() {
  //   return Scaffold(
  //     body: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: <Widget>[
  //           Container(
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10), color: Colors.green),
  //             child: Text(
  //               "Geeks",
  //               style: TextStyle(color: Colors.white, fontSize: 25),
  //             ),
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10), color: Colors.green),
  //             child: Text(
  //               "For",
  //               style: TextStyle(color: Colors.white, fontSize: 25),
  //             ),
  //           ),
  //           Container(
  //             decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(10), color: Colors.green),
  //             child: Text(
  //               "Geeks",
  //               style: TextStyle(color: Colors.white, fontSize: 25),
  //             ),
  //           )
  //         ]),
  //   );
  // }

  @override
  Widget btnLoja() {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              onTap: () => ("Tap to"),
              child: Image.asset(
                'assets/images/logo.png',
                width: 10,
                height: 10,
              ))
        ],
      )),
    );
  }
}
