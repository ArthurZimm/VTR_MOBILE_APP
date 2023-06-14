import 'package:app/screens/conector.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
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
      const SizedBox(
        height: 30,
      ),
      const Text('Perfil',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 50,
            fontFamily: 'Futura',
            color: Color.fromARGB(255, 255, 255, 255),
          )),
      _icon(),
      littlelineappbar(),
      const SizedBox(
        height: 100,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          profile_name("Arthur zimmermann"),
          const SizedBox(height: 5),
          lineappbar(),
          const SizedBox(height: 30),
          profile_email("arthur@gmail.com"),
          const SizedBox(height: 5),
          lineappbar(),
          const SizedBox(height: 30),
        ],
      ),
      const SizedBox(height: 20),
      _productBtn()
    ]);
  }

  Widget profile_name(String name) {
    return Text('Nome:' + '   $name',
        textAlign: TextAlign.start,
        style: const TextStyle(
          decoration: TextDecoration.none,
          fontSize: 20,
          fontFamily: 'Futura',
          color: Color.fromARGB(255, 255, 255, 255),
        ));
  }

  Widget profile_email(String email) {
    return Text('Email:' + '   $email',
        textAlign: TextAlign.start,
        style: const TextStyle(
          decoration: TextDecoration.none,
          fontSize: 20,
          fontFamily: 'Futura',
          color: Color.fromARGB(255, 255, 255, 255),
        ));
  }

  Widget _icon() {
    return Column(children: [
      const SizedBox(height: 10),
      SizedBox(
        height: 150,
        child: Image.asset('assets/images/logo.png'),
      )
    ]);
  }

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

  Widget littlelineappbar() {
    return Container(
      height: 0,
      width: 100,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 251, 192, 64), width: 1),
      )),
    );
  }

  Widget _productBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 251, 192, 64),
        onPrimary: Color.fromARGB(255, 0, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const SizedBox(
          width: 300,
          child: Text(
            "Produtos",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
