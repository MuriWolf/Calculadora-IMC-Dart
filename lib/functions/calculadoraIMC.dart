// ignore_for_file: file_names

String calcularIMC(double altura, double peso) {
  if (altura <= 0 || peso <= 0) {
    throw ArgumentError("Digite dados válidos.");
  }

  altura = altura / 100;
  double imc = peso / (altura * altura);
  imc = double.parse(imc.toStringAsFixed(2));
  String classificacao = "";

  if (imc < 16) {
    classificacao = "Magreza grave";
  } else if (imc < 17) {
    classificacao = "Magreza moderada";
  } else if (imc < 18.5) {
    classificacao = "Magreza leve";
  } else if (imc < 25) {
    classificacao = "Saudável";
  } else if (imc < 30) {
    classificacao = "Sobrepeso";
  } else if (imc < 35) {
    classificacao = "Obesidade Grau |";
  } else if (imc < 40) {
    classificacao = "Obesidade Grau || (severa)";
  } else if (imc >= 40) {
    classificacao = "Obesidade Grau ||| (mórbida)";
  }

  return "IMC: $imc \nClassificação: $classificacao";
}
