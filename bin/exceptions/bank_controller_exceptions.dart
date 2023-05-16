class SenderIdInvalidException implements Exception {
  SenderIdInvalidException({required this.idSender});
  String idSender;
  static const String report = "SenderIvalidException";

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  ReceiverIdInvalidException({required this.idReciver});
  String idReciver;
  static const String report = "SenderBalanceLowerThatAmountException";

  @override
  String toString() {
    return "$report\nID Reciver: $idReciver";
  }
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
  static const String report = "SenderNotAuthenticatedException";

  @override
  String toString() {
    return "$report\nID Reciver: $idSender";
  }
}

class SenderBalanceLowerThatAmountException implements Exception {
  SenderBalanceLowerThatAmountException(
      {required this.idSender,
      required this.senderBalance,
      required this.amount});

  static const String report = "SenderBalanceLowerThatAmountException";
  String idSender;
  double senderBalance;
  double amount;

  @override
  String toString() {
    return "$report\nID Sender: $idSender\n Sender Balance: $senderBalance \n Amout: $amount";
  }
}

// throw FormatException();
//   print('nunca vai chegar aqui');
//   // throw vai parar a execução, vai sair,
//   // deve sempre lançar uma exceção


// assert nao para a reprodução do codigo em produção
// apenas em tempo de desenvolvimento
// se for falto vai parar
// assert(2 <1), vai levantar um AssertionError
// assert(2 <1, "Levantei o assert"), vai levantar um AssertionError
// primeiro parametro é a condição que deve ser true/false
// se for false para a execução do codigo
// o segundo parametro é uma mensagem
// pode alterar as configurações de debug pra ele nao considerar asserts
//posso passar asserts no construtor