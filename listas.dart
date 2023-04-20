main() {
  List<String> list = ["Heloísa", "Junges", "Hackenhaar"];

  List<String> bigNames = list.where((element) => element.length > 6).toList();
  print(bigNames);

  String firstNameBigName = list.firstWhere((element) => element.length >= 7);
  print(firstNameBigName);

  String nome = "Oliveira";
  if (!list.contains(nome)) {
    print(list.contains(nome));
  }
  ;

  /// Reduce
  /// quando eu quero reduzir uma lista a um objeto
  String myName = list.reduce((value, element) {
    // vou passar pra ele uma função que tem um valor final e um elemento atual
    return value + " " + element;
  });
  print(myName);

  ///ForEach
  list.forEach((element) {
    print(element);
  });

  print(list);
}
