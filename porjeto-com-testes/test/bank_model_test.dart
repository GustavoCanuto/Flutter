import 'package:estilizacao_componentes/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
  //local, método e resultado
  test('Bank model deposit should be 10', () {
    final bank = BankModel();
    bank.deposit(10);
    
  });
}
