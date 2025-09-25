import 'dart:io';

double saldo = 1000.0; // Saldo inicial em reais

void main() {  
  //dobro();
  //mediIdade();
  //ficha();
  //saldoAtual();
  //cupons();
  //idadeMotorista();
  //mesesDoAno();
  //saquePix();
  //maioridadeDirecao();
  //imprimeNumero();
  //mostrarNome();
  buscaParada();
}

void buscaParada() {
  String frase = "Parou! Este código não continua.";

  for (var caractere in frase.split('')) {
    print(caractere);

    if (caractere.contains("!")) {
      break;
    }
  }

}

void mostrarNome() {
  List<String> nomes = <String>["Lincoln", "Louise", "Ana", "Izabelli", "Hendrick"];

  for (int i = 0; i < nomes.length; i++) {
    print(nomes[i]);
  }
}

void imprimeNumero() {
  for (int i=1; i <= 5; i++) {
    print(i);
  }
}

void metodoPagamento() {
  List<String> metodos = ["cartao", "boleto", "paypal", "pix"];
  print("Método de pagamento $metodos: ");
  String? metodoEscolhido = stdin.readLineSync();

  if (metodos.contains(metodoEscolhido)) {
    print("Método de pagamento selecionado: $metodoEscolhido.");
  } else {
    print("Método de pagamento inválido! Tente novamente.");
    metodoPagamento();
  }
}

void operacaoBancaria() {
  List<String> operacoes = ["deposito","retirada","transferencia","pagamento"];
  print("Digite uma operacao $operacoes: ");
  String? operacao = stdin.readLineSync();

  if (operacoes.contains(operacao)) {
    switch (operacao) {
      case "pagamento":
        print("Digite o valor da operação: ");
        double valorOperacao = double.parse(stdin.readLineSync()!);
        print("Operação escolhida: $operacao, Valor: $valorOperacao");
        break;
    }
  } else {
    print("Operação inválida. Tente novamente.");
    operacaoBancaria();
  }
}

void numeroMes() {
  print('Digite um número de 1 a 12 para saber o mês correspondente:');
  String? input = stdin.readLineSync();
  int? numero = int.tryParse(input ?? "");

  switch (numero) {
    case 1:
      print("Janeiro");
      break;
    case 2:
      print("Fevereiro");
      break;
    case 3:
      print("Março");
      break;
    case 4:
      print("Abril");
      break;
    case 5:
      print("Maio");
      break;
    case 6:
      print("Junho");
      break;
    case 7:
      print("Julho");
      break;
    case 8:
      print("Agosto");
      break;
    case 9:
      print("Setembro");
      break;
    case 10:
      print("Outubro");
      break;
    case 11:
      print("Novembro");
      break;
    case 12:
      print("Dezembro");
      break;
    default:
      print("Número inválido. Por favor, insira um número de 1 a 12.");
      numeroMes();
  }
}

void tipoArquivoPermitido() {
  List<String> listaTiposPermitidos = ["pdf", "jpg", "png", "docx", "xlsx"];
  print("Digite o tipo do arquivo $listaTiposPermitidos");
  String? tipoArquivo = stdin.readLineSync();

  if (listaTiposPermitidos.contains(tipoArquivo)) {
    print("Tipo de arquivo permitido: $tipoArquivo.");
  } else {
    print("Tipo de arquivo não permitido: $tipoArquivo.");
    tipoArquivoPermitido();
  }
}

void categoria() {
  List<String> categorias = ["eletrônicos", "alimentos", "vestuário", "livros"];
  print("Digite a categoria do produto $categorias: ");
  String? categoria = stdin.readLineSync();

  if (categorias.contains(categoria)) {
    print("Categoria válida: $categoria.");
  } else {
    print("Categoria inválida: $categoria.");
  }
}

void maioridadeDirecao() {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  print("País atual: ");
  String? pais = stdin.readLineSync()!;

  switch (pais) {
    case "Brasil":
      if (idade >= 18) {
        print("Você está dentro da faixa etária permitida para dirigir.");
      } else {
        print("Você não possui idade mínima permitida para dirigir.");
      }
    break;

    case "EUA":
      if (idade >= 16) {
        print("Você está dentro da faixa etária permitida para dirigir.");
      } else {
        print("Você não possui idade mínima permitida para dirigir.");
      }
    break;

    case "Japão":
      if (idade >= 20) {
        print("Você está dentro da faixa etária permitida para dirigir.");
      } else {
        print("Você não possui idade mínima permitida para dirigir.");
      }
    break;
  }
}

void saquePix() {
  double saldo = 1000.0;
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  if (valorPix <= saldo) {
    saldo -= valorPix;
    print("Saque efetuado com sucesso.");
    print("Saldo atual: $saldo");
  } else {
    print("Saldo insuficiente!");
  }
}

void mesesDoAno() {
  print("Digite um número entre 1 e 12: ");
  int numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case 1:
      print("Janeiro");
    case 2:
      print("Fevereiro");
    case 3:
      print("Março");
    case 4:
      print("Abril");
    case 5:
      print("Maio");
    case 6:
      print("Junho");
    case 7:
      print("Julho");
    case 8:
      print("Agosto");
    case 9:
      print("Setembro");
    case 10:
      print("Outubro");
    case 11:
      print("Novembro");
    case 12:
      print("Dezembro");
    default:
      print("Valor inválido!");
  }
}

void idadeMotorista() {
  print("Digite sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  if (idade >= 18) {
    print("Você está dentro da faixa etária permitida para dirigir.");
  }
}

void dobro() {
  print("Digite um número: ");
  double numero = double.parse(stdin.readLineSync()!);
  print("O dobro de $numero é ${numero*2}.");
}

void mediIdade() {
  print("Digite a idade da primeira pessoa: ");
  int idade1 = int.parse(stdin.readLineSync()!);
  print("Digite a idade da segunda pessoa: ");
  int idade2 = int.parse(stdin.readLineSync()!);
  print("Digite a idade da terceira pessoa: ");
  int idade3 = int.parse(stdin.readLineSync()!);
  print("A média das idades é ${(idade1+idade2+idade3)/3}");
}

void ficha() {
  print("Nome: ");
  String nome = stdin.readLineSync()!;
  print("CPF: ");
  String cpf = stdin.readLineSync()!;
  print("Idade: ");
  int idade = int.parse(stdin.readLineSync()!);
  print("Altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  print("Participo da comunidade (S/N)? ");
  String resposta = stdin.readLineSync()!.trim().toUpperCase();
  bool participo = (resposta == 'S');
  print("Eu sou $nome,");
  print("meu CPF é $cpf,");
  print("sou membro da comunidade? $participo.");
  print("Eu tenho $altura metros de altura e");
  print("$idade anos de idade.");
}

void saldoAtual() {
  print('Boas-vindas ao seu banco digital!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');

  print('Digite o valor do Pix que deseja realizar:');
  double valorPix = double.parse(stdin.readLineSync()!);

  saldo -= valorPix;

  print('Pix realizado com sucesso!');
  print('Seu saldo atual é de: R\$${saldo.toStringAsFixed(2)}');
}

void retiradaDePontos() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);
  double pontosRestantes = pontosIniciais - pontosRetirados;
  print("Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.");
}

void cupons() {
  print("Digite o valor total da compra: ");
  double valorCompra = double.parse(stdin.readLineSync()!);
  int cupons = valorCompra ~/ 50;
  print("Você ganhou $cupons cupom(s).");
}