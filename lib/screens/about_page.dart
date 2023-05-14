import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
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
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 1, 1, 32),
              Color.fromARGB(255, 1, 1, 32),
              Color.fromARGB(255, 41, 70, 114),
            ])),        child: Center(
          child: Text(
            texto,
            textDirection: TextDirection.ltr,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ));
  }
}
