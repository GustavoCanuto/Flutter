import 'package:estilizacao_componentes/models/bank.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
  //local, método e resultado
  
  group('Bank Model Deposit Tests', (){

    test('Bank model deposit should turn point into 10', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.points, 10);

    });
    test('Bank model deposit should turn available into 10', () {
      final bank = BankModel();
      bank.deposit(10);
      expect(bank.available, 10);

    });
  });
  
  test('Bank model transfer should turn point into 10', () {
    final bank = BankModel();
    bank.transfer(10);
    expect(bank.points, 10);

  });



}
