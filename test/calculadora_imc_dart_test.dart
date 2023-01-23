import 'package:calculadora_imc_dart/functions/calculadoraIMC.dart';
import 'package:test/test.dart';

void main() {
  test('Peso errado', () {
    expect(() => calcularIMC(167, -1), throwsA(TypeMatcher<ArgumentError>()));
  });
  test('Altura errada', () {
    expect(() => calcularIMC(0, 55), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Obesidade grau 1', () {
    expect(calcularIMC(171, 88), equals("IMC: 30.09 \nClassificação: Obesidade Grau |"));
  });
}
