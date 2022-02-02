
import './produto.dart';

class Item {
  final Produto produto;
  late int quantidade;
  late double _preco;// O '_' torna privado este atributo para fora deste arquivo.

  Item({required this.produto, this.quantidade = 0});

  double get preco {
    _preco = produto.precoComDesconto;

    return _preco;
  }

  void set preco(double novoPreco) {
    if(novoPreco < 0) {
      return;
    }

    _preco = novoPreco;
  }
}