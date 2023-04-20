main() {
  print("Hello world, from dart");
  String nomeCompleto = "Heloísa Hackenhaar";
  String apelido = "Helô";
  int idade = 29;
  bool vegana = true;
  double altura = 1.76;

  final bool maiorDeIdade;
  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }

  for (int i = 1; i < 5; i++) {
    print("numero $i de voltas");
  }
  int energia = 100;

  //preferencia é usar quando você não sabe quantas repetições vão acontecer
  // compara antes de fazer a execução
  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 10;
  }
  ;

  // compara depois de executar
  do {
    print('Mais uma repetição');
    energia = energia - 10;
  } while (energia > 0);

  String frase =
      "Olá, meu nome é $nomeCompleto, mas as pessoas costumam me chamar de $apelido. \n Eu tenho $idade anos, $altura de altura. \n Se sou vegana? $vegana \n Eu sou maior de idade? $maiorDeIdade";
  print(frase);

  List<String> listaNomes = ["Andiara", "Aluz", "Angará", "Arcano"];
  print(listaNomes[0]);
  print(listaNomes.length);
  List<dynamic> listaUsuario = [nomeCompleto, apelido, idade, vegana, altura];
  print(listaUsuario);
}
