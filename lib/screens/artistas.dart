import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/my_product_page.dart';
import 'package:app/screens/prod.dart';
import 'package:app/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Artistas_page extends StatefulWidget {
  const Artistas_page({super.key});

  @override
  State<Artistas_page> createState() => _Artistas_pageState();
}

class _Artistas_pageState extends State<Artistas_page> {
  String Nome1 = "Victor Young";
  String texto =
      '“Eu realmente fiquei impressionado com a qualidade e profundidade que o Kailani oferece, tenho usado bastante ele em minhas gravações e os resultados tem sido incríveis!”';
  String Nome2 = "Felipe Costa";
  String texto2 =
      "“O modo analog do Narciso me levou lá pra casa dos meus pais, quando eu começava a tocar, cheio de sonhos e ideias e passava horas com a guitarra. A sonoridade das repetições é macia.”";
  String Nome3 = "Sefer Dillan";
  String texto3 =
      "“Que pedal, cara! A VTR veio realmente sem medo e com força nessa linha Gold Series. Tanto o Narciso Delay quanto o Kailani Reverb, que eu também recebi ficaram brutos demais, de verdade!”";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 1, 1, 32),
                Color.fromARGB(255, 1, 1, 32),
                Color.fromARGB(255, 41, 70, 114),
              ])),
          child: SingleChildScrollView(
              child: Center(
            child: Column(children: [
              bar(),
              lineappbar(),
              const SizedBox(height: 30),
              const Text(
                'Artistas',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontFamily: 'Futura',
                  color: Color.fromARGB(255, 251, 192, 64),
                ),
              ),
              littlelineappbar(),
              const SizedBox(height: 30),
              const Image(
                  image: AssetImage('assets/images/victor.jpeg'), width: 250),
              const SizedBox(height: 20),
              Text(
                Nome1,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontFamily: 'Futura',
                  color: Color.fromARGB(255, 251, 192, 64),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                texto,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontFamily: 'Futura',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              littlelineappbar(),
              const SizedBox(height: 30),
              const Image(
                  image: AssetImage('assets/images/felipe.jpg'), width: 250),
              const SizedBox(height: 20),
              Text(
                Nome2,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontFamily: 'Futura',
                  color: Color.fromARGB(255, 251, 192, 64),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                texto2,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontFamily: 'Futura',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              littlelineappbar(),
              const SizedBox(height: 30),
              const Image(
                  image: AssetImage('assets/images/sefer.jpeg'), width: 250),
              const SizedBox(height: 20),
              Text(
                Nome3,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 25,
                  fontFamily: 'Futura',
                  color: Color.fromARGB(255, 251, 192, 64),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                texto3,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontFamily: 'Futura',
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              littlelineappbar(),
              const SizedBox(height: 30),
            ]),
          ))),
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
      width: 80,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: Color.fromARGB(255, 251, 192, 64), width: 1),
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
        const SizedBox(width: 120),
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
}
