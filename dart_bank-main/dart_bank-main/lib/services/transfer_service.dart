import 'package:dart_bank/models/account.dart';

void transferService(Account origin, Account destination, double value) {
  origin.removeBalance(value);
  destination.addBalance(value);

  if (origin == destination) {
    print("Erro:conta origem e conta destino iguais");
  }

  if (value <= 0) {
    print("Erro: valor zero ou negativo");
  }

  if (value > origin.getBalance()) {
    print("Erro: valor maior que saldo");
    print(destination.getBalance());
    return;
  }
}
