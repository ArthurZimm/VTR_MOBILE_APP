import 'package:app/screens/login_page.dart';
import 'package:app/screens/produtos/Helios.dart';
import 'package:app/screens/produtos/kailania.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/produtos/Narciso.dart';

class productPage extends StatefulWidget {
  const productPage({super.key});

  @override
  State<productPage> createState() => _productPageState();
}

class _productPageState extends State<productPage> {
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
          const SizedBox(height: 40),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const kailaniaPage())),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/kailani.png')),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 251, 192, 64)),
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
                    child: const SizedBox(
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 0,
                ),
                const SizedBox(height: 200),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'KAILANI REVERB',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 30,
              fontFamily: 'futura',
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          littleLineappbar(),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NarcisoPage())),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/narciso.png')),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 251, 192, 64)),
                    borderRadius: BorderRadius.circular(10),
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
                        blurRadius: 0.0,
                        spreadRadius: 1.0,
                      ), //BoxShadow
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 0,
              ),
              const SizedBox(height: 80),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'NARCISO DELAY',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 30,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          littleLineappbar(),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const heliosPage())),
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/images/helios.png')),
                    border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 251, 192, 64)),
                    borderRadius: BorderRadius.circular(10),
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
                width: 0,
              ),
              const SizedBox(height: 80),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'HELIOS OVERDRIVE',
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 30,
              fontFamily: 'Futura',
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          littleLineappbar(),
          const SizedBox(
            height: 50,
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
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage())),
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
        const SizedBox(width: 0),
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage())),
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
