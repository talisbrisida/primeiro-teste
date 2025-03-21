class Imovel {
  double _area=0;

  // Getter
  double get area => _area;
  // Setter
  set area(double novoArea) => _area = novoArea;



  // Getter
  double get iptu => _iptu;

  String classificacao() {
    if (area = 0) {
      return('Seu IPTU é de R\$300');
    } else if (area > 1 && area <= 50) {
      return('Seu IPTU é de R\$500');
    } else if (area >= 51 && area <= 100) {
      return('Seu IPTU é de R\$800');
    } else if (area >= 101 && area <= 200) {
      return('Seu IPTU é de R\$1200');
    } else{ 
      return('Seu IPTU é de R\$2000');
    }
  }
}

void main() {
  var imovel = Imovel();


  imovel.area = 0;
  imovel.classificacao();

  print(imovel.classificacao());
}