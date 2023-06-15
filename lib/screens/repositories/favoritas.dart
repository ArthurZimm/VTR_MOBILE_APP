import 'dart:collection';
import 'package:app/models/produtos.dart';
import 'package:app/screens/repositories/produto_repositorie.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:app/services/auth_services.dart';
import 'package:flutter/material.dart';

import '../../databases/db_firestore.dart';

class FavoritasRepository extends ChangeNotifier {
  List<Produto> _lista = [];
  late FirebaseFirestore db;
  late AuthService auth;

  FavoritasRepository({required this.auth}) {
    _startRepository();
  }

  _startRepository() async {
    await _startFirestore();
    await _readFavoritas();
  }

  _startFirestore() {
    db = DBFirestore.get();
  }

  _readFavoritas() async {
    if (auth.usuario != null && _lista.isEmpty) {
      final snapshot =
          await db.collection('usuarios/${auth.usuario!.uid}/favoritas').get();

      snapshot.docs.forEach((doc) {
        Produto moeda = ProdutoRepository.tabela
            .firstWhere((moeda) => moeda.sigla == doc.get('sigla'));
        _lista.add(moeda);
        notifyListeners();
      });
    }
  }

  UnmodifiableListView<Produto> get lista => UnmodifiableListView(_lista);

  saveAll(List<Produto> produto) {
    produto.forEach((produto) async {
      if (!_lista.any((atual) => atual.sigla == produto.sigla)) {
        _lista.add(produto);
        await db
            .collection('usuarios/${auth.usuario!.uid}/favoritas')
            .doc(produto.sigla)
            .set({
          'moeda': produto.nome,
          'sigla': produto.sigla,
        });
      }
    });
    notifyListeners();
  }

  remove(Produto produto) async {
    await db
        .collection('usuarios/${auth.usuario!.uid}/favoritas')
        .doc(produto.sigla)
        .delete();
    _lista.remove(produto);
    notifyListeners();
  }
}