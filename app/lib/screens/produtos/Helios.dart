import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:flutter/material.dart';

class heliosPage extends StatefulWidget {
  const heliosPage({super.key});

  @override
  State<heliosPage> createState() => _heliosPageState();
}

class _heliosPageState extends State<heliosPage> {
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          child: Center(
        child: Column(children: [
          bar(),
          lineappbar(),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/imagemnarciso.png')),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(0, 0, 0, 0),
                        offset: Offset(
                          0,
                          0,
                        ),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Color.fromARGB(0, 0, 0, 0),
                        offset: Offset(0.0, 0.0),
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Text(
            'HELIOS OVERDRIVE - Gold Series',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 25,
              fontFamily: 'futura',
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          littleLineappbar(),
          const SizedBox(height: 20),
          const Text(
            'O Helios Overdrive é um pedal de overdrive analógico com recursos digitais avançados. Com uma ampla gama de opções de personalização, oferece o timbre perfeito para seu som. Desde sutis saturações até drives intensos, proporciona uma resposta dinâmica e orgânica.',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 15,
              fontFamily: 'futura',
              color: Colors.white,
            ),
          ),
        ]),
      )),
    );
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
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage())),
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

  Widget littleLineappbar() {
    return Container(
      width: 125,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 251, 192, 64), width: 1),
      )),
    );
  }
}
