import 'package:flutter/material.dart';
import 'package:app/screens/conector.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController TextController = TextEditingController();

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _page(),
      ),
    );
  }

  Widget _page() {
    return Padding(
      
        padding: const EdgeInsets.all(32.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _icon(),
                _extraText(),
                const SizedBox(height: 12),
                _inputField("Nome", nomeController),
                const SizedBox(height: 12),
                _inputField("Email", emailController),
                const SizedBox(height: 12),
                _inputFieldText("Text", TextController),
                const SizedBox(height: 12),
                _sendBtn(),
                const SizedBox(height: 1),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const conector_basic()));
                    },
                    child: const Text("Voltar"))
              ],
            ),
          ),
        ));
  }

  Widget _icon() {
    return Container(
        child: Column(children: [
      const SizedBox(height: 20),
      SizedBox(
        child: Image.asset('assets/images/logo.png'),
      )
    ]));
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _inputFieldText(String hintText, TextEditingController controller) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }

  Widget _sendBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Nome : " + nomeController.text);
        debugPrint("Email : " + emailController.text);
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Send",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }

  Widget _extraText() {
    return const Text(
      "Contato",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
