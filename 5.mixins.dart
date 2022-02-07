class Carro {
  int _velocidade = 0;
  int _aceleracao = 5;

  int acelerar() {
    _velocidade += _aceleracao;

    return _velocidade;
  } 

  int frear() {
    _velocidade -= _aceleracao;

    return _velocidade;
  }
}

mixin Esportivo {
  bool _turboLigado = false;

  ligarTurbo() {
    _turboLigado = true;
  }                       

  desligarTurbo() {
    _turboLigado = false;
  }
}

class Ferrari extends Carro with Esportivo {
  int _aceleracao = 10;
}/*O mixin funciona como um copiar e colar no seu código.
É uma funcionalidade que se mostra muito útil visto que não é possível usar
múltiplas heranças no Dart*/

void main() {
  Ferrari c1 = Ferrari();

  print(c1.acelerar());
  print(c1.acelerar());
  print(c1.acelerar());
  c1.ligarTurbo();
  print(c1.frear());
  print(c1.frear());
  print(c1.frear());
}