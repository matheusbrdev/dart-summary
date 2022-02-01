
class Product {
  //Atributos
  final String name;
  double? price;// o '?' é por conta do NullSafety.
  
  Product(this.name, this.price);//Construtor

  String productDescription() //Método
  {
    return '${this.name} no valor de R\$ ${this.price}';// '\': Escape para que o '$' seja interpretado como string
  }
}

void main() {
  Product p1 = new Product('Notebook', 3500);//Instância

  print(p1.productDescription());
}