class Banco {
  double _numConta = 0, _creditoEspecial = 0, _credito = 0;
  double _saldoConta = 0,
  int _titular = '', _titularConjunto = '';
  bool _tipoConta = true;

  // Getter
  int get titular => _titular;
  // Setter
  set titular(int novoTitular) => titular = novoTitular;

    // Getter
  int get titularConjunto => _titularConjunto;
  // Setter
  set titular(int novotitularConjunto) => titularConjunto = novotitularConjunto;

  // Getter
  double get numConta => _numConta;
  // Setter
  set numConta(double novonumConta) => _numConta = novonumConta;
  
  double get _creditoEspecial => _creditoEspecial;
  // Setter
  set _creditoEspecial(double novacreditoEspecial) => _creditoEspecial = novacreditoEspecial;
  
  double get extra => _extra;
  // Setter
  set extra(double novoExtra) => _extra = novoExtra;

  double get saldoConta => _saldoConta;
  // Setter
  set saldoConta(double novoSaldoConta) => saldoConta = novoSaldoConta;


  // Getter
  double get credito => _credito;
  // Setter
  set credito(double novoCredito) => _credito = novoCredito;
  
  int (){
    extra = _creditoEspecial * 8;
  }
  void somasaldoConta() {
    saldoConta = salario / 240;
  }

  void somavalorextra() {
    _creditoEspecial = saldoConta + (saldoConta / 2);
  }

  void somavalorcredito() {
    credito = (titular * 8) - saldoConta;
  }
}

void main() {
  var contabilidade = Contabilidade();

  contabilidade.salario = 2490;
  contabilidade.titular = 2;
  contabilidade._creditoEspecial = 2;
  
  contabilidade.somasaldoConta();
  contabilidade.somavalorextra();
  contabilidade.somavalorcredito();
  
  print("Seu salário mensal é: ${contabilidade.salario}");
  print("Valor dos creditos por titular: ${contabilidade.credito}");
  print("Valor das horas extras deste mês: ${contabilidade._creditoEspecial}");
  print(contabilidade.saldoConta);