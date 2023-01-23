import 'package:calculadora_imc_dart/classes/pessoa.dart';
import 'package:calculadora_imc_dart/functions/calculadoraIMC.dart';
import 'package:calculadora_imc_dart/functions/utils.dart';

void executar() {
  String nome = "";
  double? altura = 0;
  double? peso = 0;

  do {
    nome = input("Digite o nome:");
  } while (nome == "");

  do {
    altura = inputDados("Digite a altura (em cm):");
  } while (altura == null);

  do {
    peso = inputDados("Digite o peso (em kg):");
  } while (peso == null);

  Pessoa pessoa1 = Pessoa(nome, altura, peso);

  print(calcularIMC(pessoa1.getAltura(), pessoa1.getPeso()));
}
