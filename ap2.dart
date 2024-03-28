import 'dart:math';

void main() {
  final primeiroResultado = funcaoA(funcaoB);
  final segundoResultado = funcaoA(funcaoC);

  print("Resultado A(B) = $primeiroResultado");
  print("Resultado A(C) = $segundoResultado");
}

int funcaoA(int Function(int) funcaoParametro) {
  final random = Random();

  final primeiroResultado = funcaoParametro(random.nextInt(100));

  final segundoResultado = funcaoParametro(random.nextInt(100));

  final soma = primeiroResultado + segundoResultado;

  return soma;
}

int funcaoB(int numero) {
  return numero * 4;
}

int funcaoC(int numero) {
  return numero % 4;
}
