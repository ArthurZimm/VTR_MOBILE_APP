import 'package:app/models/produtos.dart';
import 'package:app/screens/repositories/favoritas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/produto_card.dart';

class myProductPage extends StatefulWidget {
  myProductPage({Key? key}) : super(key: key);

  @override
  _myProductPageState createState() => _myProductPageState();
}

class _myProductPageState extends State<myProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos Favoritos'),
      ),
      body: Container(
        color: Colors.indigo.withOpacity(0.05),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(12.0),
        child: Consumer<FavoritasRepository>(
          builder: (context, favoritas, child) {
            return favoritas.lista.isEmpty
                ? ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Ainda não há moedas favoritas'),
                  )
                : ListView.builder(
                    itemCount: favoritas.lista.length,
                    itemBuilder: (_, index) {
                      return ProdutoCard(produto: favoritas.lista[index]);
                    },
                  );
          },
        ),
      ),
    );
  }
}



/*import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app/services/auth_services.dart';

class myProductPage extends StatefulWidget {
  @override
  State<myProductPage> createState() => _myProductPageState();
}

class _myProductPageState extends State<myProductPage> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> _addProduct(String produto) async {
    await _firestore.collection('Produtos').add({"Nome": produto});
  }

  TextEditingController idProductController = TextEditingController();
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
      child: Scaffold(backgroundColor: Colors.transparent, body: _page()),
    );
  }

  Widget _page() {
    return Column(children: [
      bar(),
      lineappbar(),
      const SizedBox(height: 50),
      const Text(
        'Meus Produtos',
        textAlign: TextAlign.start,
        style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 35,
          fontFamily: 'Futura',
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      const SizedBox(height: 50),
      _inputField("Id", idProductController),
      const SizedBox(height: 50),
      _sendProdBtn(),
    ]);
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


  Widget _inputField(String hintText, TextEditingController controller,
      {isPassword = false}) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
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

  Widget _sendProdBtn() {
    return ElevatedButton(
      onPressed: () {
        _addProduct(idProductController.text);
        debugPrint("Id : " + idProductController.text);
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Color.fromARGB(255, 251, 192, 64),
        onPrimary: Color.fromARGB(255, 0, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: const SizedBox(
          width: 120,
          child: Text(
            "Enviar",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
*/