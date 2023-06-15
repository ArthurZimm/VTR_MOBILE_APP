import 'package:app/models/produtos.dart';

class ProdutoRepository {
  static List<Produto> tabela = [
    Produto(
      icone: 'assets/images/kailani.png',
      nome: 'KAILANI REVERB',
      sigla: 'KL',
    ),
    Produto(
      icone: 'assets/images/helios.png',
      nome: 'HELIOS OVERDRIVE',
      sigla: 'HL',
    ),
    Produto(
      icone: 'assets/images/narciso.png',
      nome: 'NARCISO DELAY',
      sigla: 'Nr',
    ),
  ];
}
