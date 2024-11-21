import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // Tema escuro
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = "Bem Vindo ao Flutter"; // Texto inicial com contador
  Color _bgColor = Colors.black;
  int _counter = 0; // Contador inicializado em 0

  // Função para alterar o texto
  void _changeText() {
    setState(() {
      _counter++; // Incrementa o contador
      _text = "Texto alterado $_counter"; // Atualiza o texto com o contador
    });
  }

  // Função para alterar a cor de fundo
  void _changeBackgroundColor() {
    setState(() {
      _bgColor = (_bgColor == Colors.black) ? Colors.blueGrey : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demonstração Básica Flutter"),
      ),
      body: Container(
        color: _bgColor, // Cor de fundo que muda
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Texto com contador
              Text(
                _text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),

              // Botões em Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _changeText,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, // Cor de fundo do botão
                    ),
                    child: const Text("Alterar Texto"),
                  ),
                  SizedBox(width: 20), // Espaço entre os botões
                  ElevatedButton(
                    onPressed: _changeBackgroundColor,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Cor de fundo do botão
                    ),
                    child: const Text("Alterar Fundo"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

