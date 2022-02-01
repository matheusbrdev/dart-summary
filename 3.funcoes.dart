//Definição comum de função
int sum(int x, int y) {
  return x + y;
}

//O dart aceita que passemos funções por parâmetro.
int exec(int a, int b, int Function(int, int) fn) {
  return fn(a, b);
}

void main() {
  //Usando função sum()
  print('A soma entre 3 e 5 é: ${sum(3, 5)}');

  //Usando o recurso de passar função por parâmetro.
  final result = exec(3, 5, (a, b) {
    return a * b;
  });
  
  //OU

  final result2 = exec(5, 3, (a, b) => a - b);

  print(result);
  print(result2);
}