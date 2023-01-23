import 'dart:convert';
import 'dart:io';

String input(texto) {
  print(texto); 
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double? inputDados(String text) {
  var num = double.tryParse(input(text)) ?? 0;
  if (num <= 0) {
    return null;
  }
  return num;
}
