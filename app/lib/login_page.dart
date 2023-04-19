import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String login = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              ElevatedButton(
                  onPressed: null,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset('assets/images/logo.png'),
                      )
                    ],
                  )),
              const Text("VTR EFFECTS"),
            ],
          ),
          backgroundColor: const Color.fromRGBO(13, 14, 35, 1),
        ),
        backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
        body: Padding(
          padding: const EdgeInsets.all(45.0),
          child: SingleChildScrollView(
              child: Center(
            child: Column(children: [
              TextField(
                onChanged: (text) {
                  login = text;
                },
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                decoration: const InputDecoration(
                    labelText: "Login",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hoverColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (login == 'admin' && senha == '123') {
                    print('Correto');
                  }
                },
                child: const Text('Entrar'),
              )
            ]),
          )),
        ));
  }
}

/*return Material(
      color: Color.fromRGBO(13, 14, 35, 100),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Login",
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                
                style: TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                    
                    labelText: "Password",
                    border: OutlineInputBorder(), 
                    ),
              ),
              ElevatedButton(
                
                onPressed: null,
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );*/
