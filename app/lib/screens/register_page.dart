import 'package:app/screens/conector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordsecondController = TextEditingController();
  TextEditingController emailController = TextEditingController();

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
                const SizedBox(height: 20),
                _inputField("Nome", usernameController),
                const SizedBox(height: 20),
                _inputField("Senha", passwordController, isPassword: true),
                const SizedBox(height: 20),
                _inputField("Confirme a senha", passwordController,
                    isPassword: true),
                const SizedBox(height: 20),
                _inputField("Email", passwordController, isPassword: true),
                const SizedBox(height: 30),
                _loginBtn(),
                const SizedBox(height: 20),
                _extraText(),
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

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
        debugPrint("PasswordSecond : " + passwordsecondController.text);
        debugPrint("Email : " + emailController.text);
        if (passwordController.text == passwordsecondController.text) {
          debugPrint("password está correta");
        } else {
          debugPrint("password incorrect");
        }
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
            "Sign in ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }

  Widget _extraText() {
    return const Text(
      "Não Consegue acessar sua conta?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}
// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   String login = '';
//   String senha = '';

//   @override
//   Widget build(BuildContext context) {
//     var image = Container(
//         child: SizedBox(
//       width: 200,
//       height: 200,
//       child: Image.asset('assets/images/logo.png'),
//     ));

//     var container = Container(
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//           colors: [
//             Color.fromARGB(255, 1, 1, 32),
//             Color.fromARGB(255, 1, 1, 32),
//             Color.fromARGB(255, 41, 70, 114),
//           ],
//         )),
//         child: SizedBox(
//           width: double.infinity,
//           height: double.infinity,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextField(
//                   onChanged: (text) {
//                     login = text;
//                   },
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 255, 255, 255)),
//                   decoration: const InputDecoration(
//                       labelText: "Login",
//                       labelStyle: TextStyle(color: Colors.white),
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(color: Colors.white, width: 5)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.white)),
//                       hoverColor: Color.fromRGBO(255, 255, 255, 1)),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 TextField(
//                   onChanged: (text) {
//                     senha = text;
//                   },
//                   style: const TextStyle(
//                       color: Color.fromARGB(255, 255, 255, 255)),
//                   obscureText: true,
//                   decoration: const InputDecoration(
//                     fillColor: Color.fromRGBO(255, 255, 255, 1),
//                     labelText: "Password",
//                     labelStyle: TextStyle(color: Colors.white),
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white, width: 5)),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white)),
//                     hoverColor: Color.fromRGBO(255, 255, 255, 1),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 50,
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     print(login);
//                     print(senha);
//                   },
//                   child: const Text('Entrar'),
//                 )
//               ],
//             ),
//           ),
//         ));
//     return Material(child: container);
//   }
// }

//     return Scaffold(
//         appBar: AppBar(
//           title: Row(
//             children: [
//               ElevatedButton(
//                   onPressed: null,
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         width: 60,
//                         height: 60,
//                         child: Image.asset('assets/images/logo.png'),
//                       )
//                     ],
//                   )),
//               const Text("VTR EFFECTS"),
//             ],
//           ),
//           backgroundColor: const Color.fromRGBO(13, 14, 35, 1),
//         ),
//         backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
//         body: Padding(
//           padding: const EdgeInsets.all(45.0),
//           child: SingleChildScrollView(
//               child: Center(
//             child: Column(children: [
//               TextField(
//                 onChanged: (text) {
//                   login = text;
//                 },
//                 style:
//                     const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//                 decoration: const InputDecoration(
//                     labelText: "Login",
//                     labelStyle: TextStyle(color: Colors.white),
//                     border: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white, width: 5)),
//                     enabledBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.white)),
//                     hoverColor: Color.fromRGBO(255, 255, 255, 1)),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               TextField(
//                 onChanged: (text) {
//                   senha = text;
//                 },
//                 style:
//                     const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
//                 obscureText: true,
//                 decoration: const InputDecoration(
//                   fillColor: Color.fromRGBO(255, 255, 255, 1),
//                   labelText: "Password",
//                   labelStyle: TextStyle(color: Colors.white),
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white, width: 5)),
//                   enabledBorder: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.white)),
//                   hoverColor: Color.fromRGBO(255, 255, 255, 1),
//                 ),
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   if (login == 'admin' && senha == '123') {
//                     print('Correto');
//                   }
//                 },
//                 child: const Text('Entrar'),
//               )
//             ]),
//           )),
//         ));
//   }
// }