main() {
  escolherTransporte(Transporte.carro);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("São joao", registrosVisitados);
  print(registrosVisitados);
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

enum Transporte { carro, bike, andando, skate }

// só assume valores unicos
Set<String> registrarDestinos(String destino, Set<String> db) {
  db.add(destino);
  return db;
}
