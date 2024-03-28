import 'dart:math';

void main() {
  final List<double> raios = [];

  final random = Random();

  final int tamanhoLista = 10;

  for (int linhasLista = 0; linhasLista < tamanhoLista; linhasLista++) {
    raios.add(random.nextDouble() * 100);
  }

  resultados(raios);

}

double area(double raio) {
  return pi * pow(raio, 2);
}

double perimetro(double raio) {
  return 2 * pi * raio;
}

void resultados(List<double> raios) {
  for (final raio in raios) {
    final areaCirculo = area(raio);
    final perimetroCirculo = perimetro(raio);

    print("Raio: $raio, area: $areaCirculo, perimetro: $perimetroCirculo");
  }
}
