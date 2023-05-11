import 'package:app/screens/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/about_page.dart';

class conector_basic extends StatefulWidget {
  const conector_basic({super.key});

  @override
  State<conector_basic> createState() => _conector_basicState();
}

class _conector_basicState extends State<conector_basic> {
  @override
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
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: const Text('Acessar'),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(10.0),
          //   child: ElevatedButton(
          //     style:
          //         ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
          //     onPressed: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => const register_page()));
          //     },
          //     child: const Text('Registrar'),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
              child: const Text('Visitante'),
            ),
          )
        ],
      )),
    );
  }
}
