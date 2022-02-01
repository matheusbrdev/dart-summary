void main() {
  String? name;/* A '?' após o tipo diz que esta variável pode receber valor 'null'.
  Sem a '?' iria gerar erro, pois o dart não aceita valores nulos em variáveis por padrão.*/

  print(name!);//O '!' é uma garantia de que está variável não pode ser nula

  late String lastname;/* O 'late' diz que está variável receberá atribuição posteriormente
  e após receber valor válido... não poderá mais ser nula*/

}