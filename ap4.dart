import 'dart:math';

void main() {
  List<int> numeros = [];
  final random = Random();
  final tamanhoLista = 15;

  for (int numero = 0; numero < tamanhoLista; numero++) {
    numeros.add(random.nextInt(5000));
  }

  todosNumeros(numeros);
}

void todosNumeros(List<int> numeros) {
  numeros.sort();

  for (final decimais in numeros) {
    print(
        "Decimais: $decimais,  binarios: ${binarios(decimais)}, octais: ${octal(decimais)}, hexadecimais: ${hexadecimais(decimais)}");
  }
}

String binarios(int numero) => numero.toRadixString(2);

String octal(int numero) => numero.toRadixString(8);

String hexadecimais(int numero) => numero.toRadixString(8);
