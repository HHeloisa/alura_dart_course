import 'dart:io';

void main() {
  functionOne();
}

void functionOne() {
  print('incia f1');
  try {
    functionTwo();
    // Atenção ao escrever exceções, colocar das mais específicas pras mais genéricas
  } on FormatException catch (e) {
    // com o on, se o erro ser exatamente do tipo de exceção declarada, ele captura o erro aqui mesmo
    // sem quebrar o código, e a partir dele pode ser dado outro tratamento
    // nao vai capturar qlq tipo de erro
    print('exception na function2');
    // o catch captura o objeto de erro, e podemos usar informações a partir disso,
    // também é possível usar o catch junto a exception: "on FormatException catch (e)"
    // a propriedade padrão da exception é o toString, de resto, podem vir o que tiver
    print(e.message);
  } on HttpException catch (e) {
    print("podemos ter mais de uma exceção possivel pra cada bloco de codigo");
    print(e.uri);
  } on Exception catch (e) {
    // a exceção mais generica de todas,
    rethrow;
    // retrow diz ao codigo "se querbar nao para, ve se quem veio antes sabe lidar com isso "
  } finally {
    //não importa o que aconteça, mesmo que quebre ou que não gere nenhum erro, ele vai rodar o finally
  }
  print('fim f1');
}

void functionTwo() {
  print('incia f2');
  for (int i = 1; i > 5; i++) {
    print(i);
    try {
      double amount = double.parse('Not a number');
    } on FormatException {
      print("caiu na exceção");
    } catch (e, stackTrace) {
      print(stackTrace);
      // stackTrace é o rastro da pilha, pode ser usado pra enviar pro servidores de erros
      // a fim de mapear e registrar onde o erro aconteceu
    }
  }
  print('fim f2');
}
