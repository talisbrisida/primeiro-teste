class Pessoa {
  double _peso = 0, _altura = 0, _imc = 0;

  // Getter
  double get peso => _peso;
  // Setter
  set peso(double novoPeso) => _peso = novoPeso;

  // Getter
  double get altura => _altura;
  // Setter
  set altura(double novoAltura) => _altura = novoAltura;

  // Getter
  double get imc => _imc;

  void calcularImc() {
    this._imc = peso / (altura * altura);
  }

  String classificacao() {
    if (imc < 18.5) {
      return('Seu Imc é: ${imc.toStringAsFixed(2)} e você está abaixo do peso');
    } else if (imc > 18.5 && imc < 24.9) {
      return('Seu Imc é: ${imc.toStringAsFixed(2)} e você está com peso normal');
    } else if (imc > 25 && imc < 29.9) {
      return('Seu Imc é: ${imc.toStringAsFixed(2)} e você está com sobrepeso');
    } else{ 
      return('Seu Imc é: ${imc.toStringAsFixed(2)} e você está com peso normal');
    }
  }
}

void main() {
  var pessoa = Pessoa();

  pessoa.altura = 1.95;
  pessoa.peso = 128.59;
  pessoa.calcularImc();

  print(pessoa.classificacao());
}