
class Produto {
  final int codigo;
  final String nome;
  late double preco;
  late double desconto;

  Produto({
    required this.codigo,
    required this.nome,
    required this.preco,
    this.desconto = 0
  });

  double get precoComDesconto {// Getter: se chama na instância como se fosse atributo.
    return (1 - this.desconto) * preco;
  }
}