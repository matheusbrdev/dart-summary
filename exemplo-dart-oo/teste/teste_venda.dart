import '../modelo/cliente.dart';
import '../modelo/item.dart';
import '../modelo/produto.dart';
import '../modelo/venda.dart';

void main() {
  Venda venda = Venda(
    cliente: Cliente(
      nome: 'Nome 1',
      cpf: '123.456.789-10'
    ),
    itens: <Item>[
      Item(
        quantidade: 3,
        produto: Produto(
          codigo: 1,
          nome: 'Caneta',
          preco: 2.50,
          desconto: 0.25
        )
      )
    ]
  );

  print("Valor total: ${venda.valorTotal}");
}