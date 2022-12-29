void main() {
  fFinal();
}

fFinal() {
  final int numero = 7;
  final int numero2;
//numero = 4; //! nao pode ser atribuido pois já foi.
  numero2 = numero + 7;
  print(numero2);
}

fLate() {
  late int numero;

  ret() {
    numero = 7;
  }

  numero = numero + 7;
}
