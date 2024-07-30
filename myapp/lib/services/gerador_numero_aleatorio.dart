import 'dart:math';

class GeradorNumeroAleatorioService{
   static int gerarNumeroAleatorio(int numeroMaximo){
    return Random().nextInt(numeroMaximo);
  }
}