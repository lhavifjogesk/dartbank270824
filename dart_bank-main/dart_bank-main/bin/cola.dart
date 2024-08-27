void main() {
  //variaveis
  //dynamic age = ?? variavel qualquer

  String variavelNome = "nome";
  print(variavelNome);

  int valorVariavel = 10;
  print(valorVariavel);

  bool verdadeiro = true;
  print(verdadeiro);

  List<String> listadepalavras = ["Ana", "Barbara", "Catarina", "Daniele"];
  print('${listadepalavras[2]} - ${listadepalavras[3]}');

  listadepalavras.add("Emanuela");
  print(listadepalavras);

  //null
  String? nome;
  nome = "ABC";
  print(nome);

  //ifswitch
  bool seguiremfrente = false;

  if (seguiremfrente) {
    print("andar");
  } else {
    print("parar");
  }

  if (10 > 5) {
    print("10 é maior que 5");
  }

  int valorint = 3;
  switch (valorint) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("um");
      break;
    case 2:
      print("dois");
      break;
    default:
      print("padrão");
  }

  //repeticao
  for (int i = 1; i <= 10; i++) {
    print(i * 2);
  }

  int contador = 10;
  while (contador != 1) {
    contador = contador - 1;
    print('loop $contador');
  }

  int energia = 10;
  do {
    print('correr');
    energia -= 6;
  } while (energia > 0);

  Celular celularitalo = Celular("vermelho", 5, 0.01, 1.50);
  Celular celularoutro = Celular("branco", 6, 0.02, 1.85);

  print(celularitalo.toString());
  print(celularoutro.tamanho);
  print(celularitalo.valordoCelular(1000));

  //final
  final dataAtual = DateTime.now();
  //dataAtual = DateTime(2024, 08, 23);
  print('Data Atual $dataAtual');

  //const
  const pi = 3.1415;
  print('Pi $pi');
  //pi = 3.14;

  //map chave, valor
  Map<String, String> mapa = {'chave': 'valor'};

  mapa.putIfAbsent('novaChave', () => 'novoValor');

  mapa['novaChave2'] = 'novoValor2';

  mapa.remove('chave');

  mapa['novaChave2'] = 'atualizando';

  mapa.forEach((chave, valor) => print('chave é $chave, valor é $valor'));
  mapa.keys.forEach(print);
  mapa.update('novaChave2', (value) => 'atualizado2');
  print(mapa['chave']);
  print(mapa);
}

//classe
class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.tamanho, this.peso);

  String toString() {
    return 'Cor $cor, qtdPros $qtdPros, tamanho $tamanho, peso $peso';
  }

  double valordoCelular(double valor) {
    return valor * qtdPros;
  }
}


