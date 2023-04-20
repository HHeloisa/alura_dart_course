import 'dart:io';

void main() {
  String? nome;
  int? peso;
  double? altura;
  var calculoIMC;
  print("Olá, você precisa calcular o seu IMC? Vou lhe ajudar");

  print("Por favor, me diga seu nome?");
  String? inputName = stdin.readLineSync();
  if (inputName != null || inputName != "") {
    nome = inputName;
  } else {
    print("Por favor, digite seu nome novamente");
    String? inputNameRecuperacao = stdin.readLineSync();
    if (inputNameRecuperacao != null) {
      nome = inputNameRecuperacao;
    }
  }

  print("Agora, $nome, informe qual o seu peso");
  String? inputPeso = stdin.readLineSync();
  if (inputPeso != null || inputPeso != "") {
    peso = int.parse(inputPeso!);
  } else {
    print("Por favor, digite seu peso novamente");
    String? inputPesoRecuperacao = stdin.readLineSync();
    if (inputPesoRecuperacao != null) {
      peso = int.parse(inputPesoRecuperacao);
    }
  }

  print("Por fim, $nome, informe sua altura?");
  String? inputAltura = stdin.readLineSync();
  if (inputAltura != null || inputAltura != "") {
    altura = double.parse(inputAltura!);
  } else {
    print("Por favor, digite sua altura novamente");
    String? inputAlturaRecuperacao = stdin.readLineSync();
    if (inputAlturaRecuperacao != null) {
      altura = double.parse(inputAlturaRecuperacao);
    }
  }

  print("Certo, agora vamos calcular...");
  print("Só um momento, por favor");
  print("...");
  //IMC = peso/ (altura x altura)
  if (peso != null && altura != null) {
    calculoIMC = peso / (altura * altura);
    print("Certo, $nome, tudo pronto.");
    print("O seu IMC é: $calculoIMC");
  }

  if (calculoIMC != null) {
    String categoriaIMC = definirCategoriaIMC(calculoIMC);
    print("Você está na categoria: $categoriaIMC");
  }
}

definirCategoriaIMC(calculoIMC) {
  if (calculoIMC < 16) return "Baixo peso(grau I)";
  if (calculoIMC >= 16 && calculoIMC < 16.99) return "Baixo peso(grau II)";
  if (calculoIMC >= 17 && calculoIMC < 18.49) return "Baixo peso(grau III)";
  if (calculoIMC >= 18.50 && calculoIMC < 24.99) return "Peso adequado";
  if (calculoIMC >= 25 && calculoIMC < 20.99) return "Sobrepeso";
  if (calculoIMC >= 30 && calculoIMC < 34.99) return "Obesidade (grau I)";
  if (calculoIMC >= 35 && calculoIMC < 39.99) return "Obesidade (grau II)";
  if (calculoIMC > 40) return "Obesidade (grau III)";
}
