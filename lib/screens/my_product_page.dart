import 'package:app/models/produtos.dart';
import 'package:app/screens/garantia/garantia.dart';
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
        title: const Text('Meus Produtos'),
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 1, 1, 32),
            Color.fromARGB(255, 1, 1, 32),
            Color.fromARGB(255, 41, 70, 114),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(12.0),
        child: Consumer<FavoritasRepository>(
          builder: (context, favoritas, child) {
            return favoritas.lista.isEmpty
                ? const ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Ainda não há moedas favoritas'),
                    textColor: Color.fromARGB(0, 0, 0, 0),
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
