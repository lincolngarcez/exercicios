import 'dart:io';

double saldo = 1000.0; // Saldo inicial em reais

void main() {  
  //dobro();
  //mediIdade();
  //ficha();
  //saldoAtual();
  cupons();
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