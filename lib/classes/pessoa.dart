class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  Pessoa(this._nome, this._altura, this._peso);

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Altura": _altura,
      "Peso": _peso,
    }.toString();
  }
}
