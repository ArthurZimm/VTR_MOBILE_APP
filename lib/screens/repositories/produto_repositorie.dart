import 'package:app/models/produtos.dart';

class ProdutoRepository {
  static List<Produto> tabela = [
    Produto(
      icone: 'assets/images/kailani.png',
      nome: 'Kailani',
      sigla: 'KL',
    ),
    Produto(
      icone: 'assets/images/helios.png',
      nome: 'Helios',
      sigla: 'HL',
    ),
    Produto(
      icone: 'assets/images/narciso.png',
      nome: 'Narciso',
      sigla: 'Nr',
    ),
  ];
}
