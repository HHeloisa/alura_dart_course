import 'enum.dart';

class Viagem {
 Transporte locomocao;
 Viagem({required this.locomocao});
 Set<String> registrosVisitados = <String>{};
 Map<String, dynamic> registrosPrecos = {};
 // _ tona o campo privado
 int _totalLocaisVisitador = 0; 


//o getter controla o acessoa  info, nao precisa de parametro pq ele só 
// retona um dado, nao faz uma operação
int get consultarTotalLocaisVistador{
  return _totalLocaisVisitador;
}

// o set vai, de forma controloda, permitir edita campos privados
//pra ser cahamdo seria a instancia da classe.nome da função = x
// ou seja, o valor nao é passado por parametro é atribuido
void set alterarTotalLocaisVisitados(newQnt){
  if (newQnt > 10) {
    print("Noa e possivel");
  } else{
    _totalLocaisVisitador = newQnt;
  }
}

// só assume valores unicos
void registrarDestinos(String destino) {
  registrosVisitados.add(destino);
}

void registrarPrecos(String local, dynamic precos){
  registrosPrecos[local] = precos;
}

void escolherTransporte(
  Transporte locomocao,
) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro");
      break;
    case Transporte.andando:
      print("Vou de andando");
      break;
    case Transporte.bike:
      print("Vou de bike");
      break;
    case Transporte.skate:
      print("Vou de skate");
      break;
    default:
      print('vou');
      break;
  }
}

}


