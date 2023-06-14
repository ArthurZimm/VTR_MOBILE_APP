import 'package:app/services/auth_services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/splashscreen/my_splash_screen.dart';
import 'meu_aplicativo.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),
      ],
      child: MeuAplicativo(),
    ),
  );
}



/*@override
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
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
              child: const Text('Acessar'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const register_page()));
              },
              child: const Text('Registrar'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.yellow[800]),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const home_page()));
              },
              child: const Text('Visitante'),
            ),
          )
        ],
      )),
    );
  }
}
*/