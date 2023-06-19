import 'package:app/screens/about_page.dart';
import 'package:app/screens/artistas.dart';
import 'package:app/screens/forum_page.dart';
import 'package:app/screens/my_product_page.dart';
import 'package:app/screens/prod.dart';
import 'package:app/screens/product_page.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/contact_page.dart';
import 'package:provider/provider.dart';

import '../services/auth_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var nomesInstrumentos = [
    'NARCISO DELAY',
    'HELIOS OVERDRIVE',
    'KAILANI REVERB'
  ];

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
      bar(),
      lineappbar(),
      Padding(
        padding: const EdgeInsets.all(0),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
              start: 1, top: 40, end: 1, bottom: 1),
          child: CarouselSlider(
            options: CarouselOptions(height: 200),
            items: [
              'assets/images/kailanibanner.png',
              'assets/images/imagemnarciso.png',
              'assets/images/narcisooficial.png',
            ].map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: 300,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Image.asset(i),
                      const SizedBox(
                        height: 10,
                      ),
                      if (i == 'assets/images/kailanibanner.png')
                        Text(
                          nomesInstrumentos[0],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      if (i == 'assets/images/narcisooficial.png')
                        Text(
                          nomesInstrumentos[2],
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Colors.white),
                        ),
                      if (i == 'assets/images/imagemnarciso.png')
                        Text(
                          nomesInstrumentos[1],
                          style: const TextStyle(
                              fontSize: 15,
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
      lineappbar(),
      const SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const productPage())),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/loja.png')),
                border: Border.all(
                    width: 5, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(5, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(50, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: const SizedBox(
                width: 120,
                height: 120,
              ),
            ),
          ),
          const SizedBox(width: 60),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Artistas_page())),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/artistas.png')),
                border: Border.all(
                    width: 5, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(5, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(50, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: const SizedBox(
                width: 120,
                height: 120,
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
      const SizedBox(height: 50),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const about_page())),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/sobre.png')),
                border: Border.all(
                    width: 5, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(5, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(50, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: const SizedBox(
                width: 120,
                height: 120,
              ),
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactPage())),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/contato.png')),
                border: Border.all(
                    width: 0, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(5, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(50, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
              ),
              child: const SizedBox(
                width: 200,
                height: 200,
              ),
            ),
          ),
          const SizedBox(height: 80),
        ],
      )
    ]);
  }

  @override
  Widget bar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
            padding: EdgeInsets.all(0),
            child: Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 1, top: 85, end: 1, bottom: 10))),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/logo.png')),
            ),
          ),
        ),
        const SizedBox(width: 120),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ListViewFirebase())),
          child: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('assets/images/forum.png')),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => myProductPage())),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.png')),
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProdutosPage())),
          child: Container(
            width: 20,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/notification.png')),
            ),
          ),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: () => context.read<AuthService>().logout(),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logout.png')),
            ),
          ),
        )
      ],
    );
  }

  Widget lineappbar() {
    return Container(
      height: 0,
      width: 370,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 251, 192, 64), width: 1),
      )),
    );
  }
}
