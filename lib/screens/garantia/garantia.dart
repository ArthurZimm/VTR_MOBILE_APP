import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:app/screens/my_product_page.dart';
import 'package:app/screens/prod.dart';
import 'package:app/services/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class garantia_page extends StatefulWidget {
  const garantia_page({super.key});

  @override
  State<garantia_page> createState() => _garantia_pageState();
}

class _garantia_pageState extends State<garantia_page> {
  String texto = "Garantimos a qualidade dos nossos produtos e serviços, "
      "oferecendo uma garantia abrangente contra defeitos de fabricação."
      "Estamos comprometidos em superar suas expectativas e fornecer uma experiência de "
      "compra satisfatória. Nossa equipe de atendimento ao cliente está disponível para "
      "ajudar em qualquer dúvida ou problema. "
      "Sua satisfação é nossa prioridade.";

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
                'GARANTIA',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontFamily: 'Futura',
                  color: Color.fromARGB(255, 251, 192, 64),
                ),
              ),
              littlelineappbar(),
              const SizedBox(height: 30),
              const Image(image: AssetImage('assets/images/logo.png')),
              const SizedBox(height: 10),
              Text(
                texto,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  fontFamily: 'Futura',
                  color: Colors.white,
                ),
              ),
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
