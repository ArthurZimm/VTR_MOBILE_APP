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
      child: Scaffold(backgroundColor: Colors.transparent, body: _page()),
    );
  }

  Widget _page() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: CarouselSlider(
              options: CarouselOptions(height: 200),
              items: ['assets/images/kailani.png', 'assets/images/narciso.png']
                  .map((i) {
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
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: Image.asset(
                'assets/images/loja.png',
                width: 100,
                height: 100,
              )),
          const SizedBox(width: 70),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: Image.asset(
                'assets/images/artistas.png',
                width: 100,
                height: 100,
              )),
          const SizedBox(height: 80),
        ],
      ),
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: Image.asset(
                'assets/images/sobre.png',
                width: 100,
                height: 100,
              )),
          const SizedBox(
            width: 70,
          ),
          GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage())),
              child: Image.asset(
                'assets/images/contato.png',
                width: 100,
                height: 100,
              )),
          const SizedBox(height: 80),
        ],
      )
    ]);
  }
}
