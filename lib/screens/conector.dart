import 'package:app/screens/contact_page.dart';
import 'package:flutter/material.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/about_page.dart';
import 'package:app/screens/product_page.dart';
import 'package:app/screens/profile_page.dart';
import 'package:app/screens/my_product_page.dart';

class conector_basic extends StatefulWidget {
  const conector_basic({super.key});

  @override
  State<conector_basic> createState() => _conector_basicState();
}

class _conector_basicState extends State<conector_basic> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(height: 150),
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('login'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Text('Registro '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactPage()));
                },
                child: const Text('contato'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text('home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const about_page()));
                },
                child: const Text('sobre'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const productPage()));
                },
                child: const Text('produtos'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const profilePage()));
                },
                child: const Text('Perfil'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800]),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => myProductPage()));
                },
                child: const Text('meus produtos'),
              ),
            )
          ],
        )),
      ),
    ));
  }
}
