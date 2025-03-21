class Contabilidade {
  double _salario = 0, _horaExtra = 0, _desconto = 0;
  double _valorHora = 0, _extra = 0;
  int _falta = 0;

  // Getter
  double get salario => _salario;
  // Setter
  set salario(double novoSalario) => _salario = novoSalario;
  
  double get horasExtras => _horaExtra;
  // Setter
  set horasExtras(double novaHoraExtra) => _horaExtra = novaHoraExtra;
  
  double get extra => _extra;
  // Setter
  set extra(double novoExtra) => _extra = novoExtra;

  double get valorHora => _valorHora;
  // Setter
  set valorHora(double novoValorHora) => _valorHora = novoValorHora;

  // Getter
  int get falta => _falta;
  // Setter
  set falta(int novaFalta) => _falta = novaFalta;

  // Getter
  double get desconto => _desconto;
  // Setter
  set desconto(double novoDesconto) => _desconto = novoDesconto;
  
  void somaextra(){
    extra = _horaExtra * 8;
  }
  void somavalorhora() {
    valorHora = salario / 240;
  }

  void somavalorextra() {
    _horaExtra = valorHora + (valorHora / 2);
  }

  void somavalordesconto() {
    desconto = (falta * 8) - valorHora;
  }
}

void main() {
  var contabilidade = Contabilidade();

  contabilidade.salario = 2490;
  contabilidade.falta = 2;
  contabilidade.horasExtras = 2;
  
  contabilidade.somavalorhora();
  contabilidade.somavalorextra();
  contabilidade.somavalordesconto();
  
  print("Seu salário mensal é: ${contabilidade.salario}");
  print("Valor dos descontos por Falta: ${contabilidade.desconto}");
  print("Valor das horas extras deste mês: ${contabilidade.horasExtras}");
  print(contabilidade.valorHora);
}
