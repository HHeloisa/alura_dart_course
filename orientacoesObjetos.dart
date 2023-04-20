void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "verde e Amarelo";
  String sabor = "Doce e cítrica";
  int diasDesdeColheita = 30;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  mostrarMadura("Uva", 45, cor: "Roxo");

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  // Fruta fruta02 = Fruta.nomeado(
  //     nome: "Uva", peso: 3, cor: "Roxa", sabor: "Azeda", diasDesdeColheita: 60);
  fruta01.estaMadura(20);
  // fruta02.estaMadura(70);

  Fruta melancia = Fruta("Melancia", 1500.00, "Verde", "Doce", 40);
  melancia.estaMadura(43);
  Legumes mandioca = Legumes("Macaxeira", 1200, "Marrom", true);
  Citrica limao = Citrica("Limão", 50, "Laranja", "Azedo", 10, 2);
  Nozes macadamia = Nozes("Macadamia", 2, "Laranja", "Doce", 100, 9);

  // macadamia.printAlimento();
  // limao.printAlimento();
  // mandioca.cozinhar();
  // melancia.fazerSuco();
  // limao.existeRefri(true);
  macadamia.fazerMassa();
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

void mostrarMadura(String nome, int dias,
    {String sabor = "Não experimentada", required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura");
  } else {
    print("A $nome não está madura");
  }
  print("O sabeor é: $sabor");
  print("A fruta $nome, possui a cor $cor.");
}

int funcQuantosDiasParaMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Alimento $nome, tem $peso gramas, e é da cor $cor");
  }
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  // Fruta.nomeado(
  //     {required this.nome,
  //     required this.peso,
  //     required this.cor,
  //     required this.sabor,
  //     required this.diasDesdeColheita,
  //     this.isMadura});

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura, portanto, ela esta madura? $isMadura");
  }

  void fazerSuco() {
    print("Você fez um ótimo suco de $nome");
  }

  @override
  @override
  void assar() {
    print("por no forno e assar");
  }

  @override
  void fazerMassa() {
    print("misturando a $nome com  os outros ingredientes");
  }

  @override
  void separarIngredientes() {
    print("pegar a $nome");
  }
}

class Legumes extends Alimento implements Bolo {
  bool isPrecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando");
    } else {
      print("nem precisa cozinhar");
    }
  }

  @override
  void assar() {
    // adicionar tempo
  }

  @override
  void fazerMassa() {
    // Tmisturar ingredientes
  }

  @override
  void separarIngredientes() {
    // cozido ou cru
  }
}

class Citrica extends Fruta implements Bolo {
  double nivelAzedo;
  Citrica(String nome, double peso, String cor, String sabor,
      int diasDeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe refrigerante de $nome');
    } else {
      print("Não existe refri de $nome");
    }
  }

  @override
  void assar() {
    print("por no forno e assar");
  }

  @override
  void fazerMassa() {
    print("misturando a $nome com  os outros ingredientes");
  }

  @override
  void separarIngredientes() {
    print("pegar a $nome");
  }
}

class Nozes extends Fruta {
  double porcentagemDeOleoNatural;
  Nozes(String nome, double peso, String cor, String sabor, int diasDeColheita,
      this.porcentagemDeOleoNatural)
      : super(nome, peso, cor, sabor, diasDeColheita);

  @override // vai reescrever algo herdado
  void fazerMassa() {
    // no caso a função fazerMassa
    print("tirar a casca"); // executa algo
    super.fazerMassa(); // executa a função herdada
  }
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}
