// Definição da classe abstrata
abstract class Forma {
  // Método abstrato (sem implementação)
  void desenhar();

  // Método concreto (com implementação)
  void calcularArea();
}

// Subclasse concreta que estende a classe abstrata
class Circulo extends Forma {
  double raio;

  Circulo(this.raio);
  @override
  void desenhar() {
    print("Desenhando um círculo com raio ${raio}.");
  }

  @override
  void calcularArea() {
    print("Calculo da area: ${3.14 * (this.raio * this.raio)}");
  }
}

// Outra subclasse concreta que estende a classe abstrata

class Retangulo extends Forma {
  double comprimento;
  double altura;

  Retangulo(this.comprimento, this.altura);
  @override
  void desenhar() {
    print("Desenhando retângulo com largura $comprimento e altura $altura.");
  }

  @override
  void calcularArea() {
    print("a area do Retangulo é ${this.comprimento * this.altura}");
  }
}

void main() {
  // Criando instâncias das subclasses

  Forma circulo = Circulo(5.0);
  Forma retangulo = Retangulo(10.0, 20.0);

  circulo.desenhar();
  circulo.calcularArea();
  retangulo.desenhar();
  retangulo.calcularArea();
}
