void main() {//Função 'main': É a 'porta de entrada' de um programa em dart.

  //Declaração de variáveis
  int a = 3;
  double b = 3.1;
  String d = 'Essa é uma string';
  bool isTrue = false;

  var e = 'Essa também'; /*Declaração por inferência, ou seja, o dart identifica qual é o tipo.
  Lembrando que o dart é fortemente tipado, então... a tipagem sempre estará
  presente desde a declaração, mesmo que seja por inferência*/

  //Tipo dynamic: Tipagem dinâmica. Única forma de trabalhar com tipagem fraca no dart.
  dynamic x = 'String';
  x = 123;
  x = false;

  //Definição de constantes
  final int f = 3;
  const int c = 5;
  /*Diferença entre final e const:
    O 'const' se usa quando a definição desta constante pode ser feita no momento
    da compilação, ou seja, é um valor já conhecido e não precisará ser definido
    no momento da execução.

    Exemplo: const PI = 3.1415;

    Já o 'final' se usa quando ainda não conhecemos o valor, porém, sabemos que
    ele não mudará a partir da sua primeira atribuição.
    Exemplo: final entradaDoUser = stdin.readLineSync(); - Função que pede uma entrada do usuário -
  */

  //Definição de List
  List<String> names = ['Matheus', 'Joabe'];
  names.add('Elenice');
  names.add('Geovanne');

  print('Tamanho da List: ${names.length}');
  print('Acessando por índice: ${names.elementAt(0)}');//OU
  print('Acessando por índice: ${names[1]}');

  print('---------------');

  //Definição de Set
  Set<int> setDefinition = {0, 1, 2, 3, 4};//Não aceita valores repetidos.
  print('Is Set ? ${setDefinition is Set}');
  print('Tamanho do Set ? ${setDefinition.length}');

  print('---------------');

  //Definição de Map
  Map<String, double> studentGrades = {
    'Matheus': 9.5,
    'Joabe': 10,
  };

  //Percorrendo Map
  for(var keys in studentGrades.keys) {
    print('Key: $keys');
  }

  for(var values in studentGrades.values) {
    print('Values: $values');
  }

  for(var studentGrade in studentGrades.entries) {
    print('${studentGrade.key}: ${studentGrade.value}');
  }
}