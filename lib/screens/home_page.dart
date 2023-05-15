import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/contact_page.dart';

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

  // Widget bar() {
  //   return Scaffold(
  //     appBar: AppBar(
  //       actions: [
  //         IconButton(
  //             onPressed: () {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => LoginPage()));
  //             },
  //             icon: Icon(Icons.notifications))
  //       ],
  //     ),
  //   );
  // }

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
            items: ['assets/images/kailani.png', 'assets/images/narciso.png']
                .map((i) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: 100,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Image.asset(i),
                      const SizedBox(
                        height: 20,
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
      const SizedBox(height: 40),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
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
                    color: Color.fromARGB(52, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(127, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: const SizedBox(
                width: 120,
                height: 120,
              ),
            ),
          ),
          const SizedBox(width: 40),
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactPage())),
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/images/artistas.png')),
                border: Border.all(
                    width: 5, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(52, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(127, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
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
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactPage())),
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
                    color: Color.fromARGB(52, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(127, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
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
            width: 40,
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
                    width: 5, color: const Color.fromARGB(0, 255, 235, 59)),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(52, 255, 255, 0),
                    offset: Offset(
                      0,
                      0,
                    ),
                    blurRadius: 0.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Color.fromARGB(127, 90, 105, 172),
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
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
        const SizedBox(width: 200),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/profile.png')),
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomeScreen())),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/notification.png')),
            ),
          ),
        )
      ],
    );
  }

  @override
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

// Image.asset(
//                 'assets/images/contato.png',
//                 width: 100,
//                 height: 100,
//               )