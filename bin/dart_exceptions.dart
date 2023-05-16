import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
        idSender: "Kako222", idReceiver: "Ricarth", amount: 50);
    // Observando resultado
    if (result) {
      print("Transação concluída com sucesso");
    }
  } on SenderIdInvalidException catch (e) {
    print(e); // vai fazer print do toString
    print("O ID é ${e.idSender} do remetente não é um ID válido");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID é ${e.idReciver} do remetente não é um ID válido");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuário rementede de ID ${e.idSender} não está autenticado");
  } on SenderBalanceLowerThatAmountException catch (e) {
    print(e);
    print(
        "O usuário de ID ${e.idSender} tentou enviar ${e.amount}, mas possui apenas ${e.senderBalance} disponível");
  } on Exception {
    print("Algo deu errado");
  }
  ;
}
