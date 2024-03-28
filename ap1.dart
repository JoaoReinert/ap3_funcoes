import 'dart:math';

void main() {
  final List<int> primeiraLista = [];
  final List<int> segundaLista = [];

  final random = Random();

  final tamanhoLista = 5;

  for (int linhasLista = 0; linhasLista < tamanhoLista; linhasLista++) {
    primeiraLista.add(random.nextInt(100));

    segundaLista.add(random.nextInt(100));
  }

  print("Lista 1: $primeiraLista");
  print("Lista 2: $segundaLista");

  final terceiraLista = somarListas(primeiraLista, segundaLista);
  print(terceiraLista);
}

void impressaoListas(List<int> primeiraLista, List<int> segundaLista) {
  if (primeiraLista.isEmpty || segundaLista.isEmpty) {
    print("Lista vazia");
  }
}

List<int> somarListas(List<int> primeiraLista, List<int> segundaLista) {
  if (primeiraLista.length != segundaLista.length) {
    return [];
  }

  final resultado = <int>[];

  for (var i = 0; i < primeiraLista.length; i++) {
    final resultadoPrimeiraLista = primeiraLista[i];
    final resultadoSegundaLista = segundaLista[i];
    final soma = resultadoPrimeiraLista + resultadoSegundaLista;

    print("${resultadoPrimeiraLista} + ${resultadoSegundaLista}");

    resultado.add(soma);
  }

  return resultado;
}
