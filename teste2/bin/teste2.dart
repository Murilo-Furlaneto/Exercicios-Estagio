import 'dart:io';

void main() {
  print("Informe um número inteiro: ");
  int numero = int.parse(stdin.readLineSync()!);

  List<int> sequencia = [0, 1]; // dois primeiros valores da sequencia

  for (int i = 2; i <= numero; i++) {//começa em 2 porque já foi inicializado os dois primeiros valores da sequencia
    int proximo = sequencia[i - 1] + sequencia[i - 2];
    sequencia.add(proximo);

    if (proximo == numero) {
      print("$numero pertence à sequência de Fibonacci.");
      return;
    }
  }

  print("$numero não pertence à sequência de Fibonacci.");
}
