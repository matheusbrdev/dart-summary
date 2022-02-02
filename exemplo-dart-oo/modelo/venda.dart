import 'cliente.dart';
import 'item.dart';

class Venda {
  final Cliente cliente;
  late List<Item> itens;

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    double total = 0.0;

    for(Item i in this.itens) {
      total += i.quantidade * i.preco;
    }

    return total;
  }
}