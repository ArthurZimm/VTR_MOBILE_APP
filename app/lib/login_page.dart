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
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Padding(
          padding: const EdgeInsets.all(45.0),
          child: SingleChildScrollView(
              child: Center(
            child: Column(children: [
              TextField(
                onChanged: (text) {
                  login = text;
                },
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                    labelText: "Login",
                    border: OutlineInputBorder(),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if (login == 'admin' && senha == '123') {
                    print('Correto');
                  }
                },
                child: Text('Entrar'),
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
