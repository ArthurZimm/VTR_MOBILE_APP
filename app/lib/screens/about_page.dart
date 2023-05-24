import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:flutter/material.dart';

class about_page extends StatefulWidget {
  const about_page({super.key});

  @override
  State<about_page> createState() => _about_pageState();
}

class _about_pageState extends State<about_page> {
  String texto =
      "O ano era 2015 e nosso fundador Ítalo se encontrava insatisfeito com sua pedaleira Zoom G1."
      "Sonhava em desbravar o mundo dos efeitos, mas não tinha recursos financeiros para investir em um setup de pedais "
      "ou mesmo em uma nova pedaleira. Contudo, a limitação financeira não foi um empecilho para ele. Pelo contrário, "
      "diante deste cenário encontrou o ambiente perfeito para a idealização de um pedal, que de forma despretensiosa "
      "se tornaria o sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador Ítalo se encontrava insatisfeito com sua "
      "pedaleira Zoom G1. Sonhava em desbravar o mundo dos efeitos, mas não tinha recursos financeiros para investir em "
      "um setup de pedais ou mesmo em uma nova pedaleira. Contudo, a limitação financeira não foi um empecilho para ele."
      "Pelo contrário, diante deste cenário encontrou o ambiente perfeito para a idealização de um pedal, que de forma "
      "despretensiosa se tornaria o sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador Ítalo se encontrava "
      "insatisfeito com sua pedaleira Zoom G1. Sonhava em desbravar o mundo dos efeitos, mas não tinha recursos financeiros"
      "para investir em um setup de pedais ou mesmo em uma nova pedaleira. Contudo, a limitação financeira não foi um "
      "empecilho para ele. Pelo contrário, diante deste cenário encontrou o ambiente perfeito para a idealização de um "
      "pedal, que de forma despretensiosa se tornaria o sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador Ítalo "
      "se encontrava insatisfeito com sua pedaleira Zoom G1. Sonhava em desbravar o mundo dos efeitos, mas não tinha "
      "recursos financeiros para investir em um setup de pedais ou mesmo em uma nova pedaleira. Contudo, a limitação "
      "financeira não foi um empecilho para ele. Pelo contrário, diante deste cenário encontrou o ambiente perfeito "
      "para a idealização de um pedal, que de forma despretensiosa se tornaria o sonho chamado VTR EFFECTS.O ano era "
      "2015 e nosso fundador Ítalo se encontrava insatisfeito com sua pedaleira Zoom G1. Sonhava em desbravar o mundo "
      "dos efeitos, mas não tinha recursos financeiros para investir em um setup de pedais ou mesmo em uma nova "
      "pedaleira. Contudo, a limitação financeira não foi um empecilho para ele. Pelo contrário, diante deste "
      "cenário encontrou o ambiente perfeito para a idealização de um pedal, que de forma despretensiosa se tornaria o "
      "sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador Ítalo se encontrava insatisfeito com sua pedaleira Zoom "
      "G1. Sonhava em desbravar o mundo dos efeitos, mas não tinha recursos financeiros para investir em um setup de "
      "pedais ou mesmo em uma nova pedaleira. Contudo, a limitação financeira não foi um empecilho para ele. "
      "Pelo contrário, diante deste cenário encontrou o ambiente perfeito para a idealização de um pedal, "
      "que de forma despretensiosa se tornaria o sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador "
      "Ítalo se encontrava insatisfeito com sua pedaleira Zoom G1. Sonhava em desbravar o mundo dos efeitos,"
      "mas não tinha recursos financeiros para investir em um setup de pedais ou mesmo em uma nova pedaleira."
      "Contudo, a limitação financeira não foi um empecilho para ele. Pelo contrário, diante deste cenário "
      "encontrou o ambiente perfeito para a idealização de um pedal, que de forma despretensiosa se tornaria o "
      "sonho chamado VTR EFFECTS.O ano era 2015 e nosso fundador Ítalo se encontrava insatisfeito com sua pedaleira "
      "Zoom G1. Sonhava em desbravar o mundo dos efeitos, mas não tinha recursos financeiros para investir em um "
      "setup de pedais ou mesmo em uma nova pedaleira. Contudo, a limitação financeira não foi um empecilho para"
      "ele. Pelo contrário, diante deste cenário encontrou o ambiente perfeito para a idealização de um pedal, que"
      "de forma despretensiosa se tornaria o sonho chamado VTR EFFECTS.";

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
              const SizedBox(height: 50),
              const Text(
                'SOBRE',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                  fontFamily: 'Futura',
                  color: Colors.yellow,
                ),
              ),
              const SizedBox(height: 50),
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
}
