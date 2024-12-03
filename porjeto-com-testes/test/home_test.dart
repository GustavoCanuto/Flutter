import 'package:estilizacao_componentes/data/bank_inherited.dart';
import 'package:estilizacao_componentes/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('My widget has a text "Spent" ', (tester) async {
    //pump é desenhar o widget para verificar
    //home é dependente de outros widgets
    await tester.pumpWidget(
        MaterialApp(
          home: BankInherited(
              child: Home(),
          ),
        ));

  });
}
