import 'package:flutter/material.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

showAlertDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("Senha incorreta"),
    content: Text("as senhas não coincidem, toque na tela para altera-las!"),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class _register_pageState extends State<register_page> {
  String nome = '';
  String login = '';
  String email = '';
  String senha = '';
  String contraSenha = '';
  String telefone = '';

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
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/logo.png'),
                      )
                    ],
                  )),
              const Text("VTR EFFECTS"),
            ],
          ),
          backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
        ),
        backgroundColor: const Color.fromRGBO(13, 14, 35, 100),
        body: Padding(
          padding: const EdgeInsets.all(80.0),
          child: SingleChildScrollView(
              child: Center(
            child: Column(children: [
              const SizedBox(
                height: 5,
              ),
              TextField(
                onChanged: (text) {
                  nome = text;
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  login = text;
                },
                style: const TextStyle(color: Colors.white),
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
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  senha = text;
                },
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hoverColor: Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  contraSenha = text;
                },
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (text) {
                  telefone = text;
                },
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    labelText: "Telefone",
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hoverColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (senha != contraSenha) {
                    showAlertDialog(context);
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
