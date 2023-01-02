class ImcModel {
  double pesoAnimal;
  double alturaAnimal;
  String classificacao;

  ImcModel({
    required this.pesoAnimal,
    required this.alturaAnimal,
    this.classificacao = '',
  });

  double calcularIMC() {
    return pesoAnimal / (alturaAnimal * alturaAnimal);
  }

  String classificacaoIMC() {
    var imc = calcularIMC();

    if (imc < 18.5) {
      classificacao = '${imc.toStringAsFixed(2)} = Abaixo do peso';
    } else if (imc >= 18.5 && imc <= 24.9) {
      classificacao = '${imc.toStringAsFixed(2)} = Peso ideal';
    } else if (imc >= 25.0 && imc <= 29.9) {
      classificacao = '${imc.toStringAsFixed(2)} = Excesso de peso';
    } else {
      classificacao = '${imc.toStringAsFixed(2)} = Obesidade';
    }

    return classificacao;
  }
/*-------------------------------
IMC	Classificação
< 18,5	        Abaixo do peso
18,5 - 24,9	    Peso ideal
25,0 - 29,9	    Excesso de peso
> 30,0	        Obesidade
--------------------------------*/
}
