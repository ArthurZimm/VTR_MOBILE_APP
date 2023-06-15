import 'package:app/screens/repositories/favoritas.dart';
import 'package:app/models/produtos.dart';
import 'package:app/screens/repositories/favoritas.dart';
import 'package:app/screens/repositories/produto_repositorie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../configs/appsettings.dart';

class ProdutosPage extends StatefulWidget {
  ProdutosPage({Key? key}) : super(key: key);

  @override
  _ProdutosPageState createState() => _ProdutosPageState();
}

class _ProdutosPageState extends State<ProdutosPage> {
  final tabela = ProdutoRepository.tabela;

  List<Produto> selecionadas = [];
  late FavoritasRepository favoritas;

  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Produtos'),
        actions: const [],
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            limparSelecionadas();
          },
        ),
        title: Text('${selecionadas.length} selecionadas'),
        backgroundColor: Colors.blueGrey[50],
        elevation: 1,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(221, 255, 255, 255)),
        toolbarTextStyle: const TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ).bodyText2,
        titleTextStyle: const TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ).headline6,
      );
    }
  }

  limparSelecionadas() {
    setState(() {
      selecionadas = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    // favoritas = Provider.of<FavoritasRepository>(context);
    favoritas = context.watch<FavoritasRepository>();
    return Scaffold(
      appBar: appBarDinamica(),
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
          ),
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int moeda) {
            return ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(102)),
              ),
              leading: (selecionadas.contains(tabela[moeda]))
                  ? const CircleAvatar(
                      backgroundColor: Color.fromARGB(0, 255, 255, 255),
                      foregroundColor: Color.fromARGB(255, 255, 119, 0),
                      child: Icon(Icons.check_circle_outline),
                    )
                  : SizedBox(
                      width: 120,
                      child: Image.asset(tabela[moeda].icone),
                    ),
              title: Row(
                children: [
                  Text(
                    tabela[moeda].nome,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  const SizedBox(width: 20),
                  if (favoritas.lista
                      .any((fav) => fav.sigla == tabela[moeda].sigla))
                    const Icon(Icons.favorite, color: Colors.amber, size: 30),
                ],
              ),
              selected: selecionadas.contains(tabela[moeda]),
              selectedTileColor: const Color.fromARGB(255, 255, 255, 0),
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[moeda]))
                      ? selecionadas.remove(tabela[moeda])
                      : selecionadas.add(tabela[moeda]);
                });
              },
            );
          },
          padding: const EdgeInsets.all(15),
          separatorBuilder: (_, ___) => const Divider(
            color: Color.fromARGB(255, 255, 208, 0),
            thickness: 2,
          ),
          itemCount: tabela.length,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {
                favoritas.saveAll(selecionadas);
                limparSelecionadas();
              },
              icon: const Icon(Icons.star),
              label: const Text(
                'ACRESCENTAR MEU PRODUTO',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
