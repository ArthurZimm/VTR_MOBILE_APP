import 'package:app/screens/about_page.dart';

import 'package:flutter/material.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/splashscreen/my_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MySplashScreen(),
      //const LoginPage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            ])),
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset('assets/images/logo.png'),
        ));
  }
}



/*@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
      body: Center(
          child: Column(
        children: [
          SizedBox(height: 150),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset('assets/images/logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('Acessar'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const register_page()));
              },
              child: const Text('Registrar'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const home_page()));
              },
              child: const Text('Visitante'),
            ),
          )
        ],
      )),
    );
  }
}
*/