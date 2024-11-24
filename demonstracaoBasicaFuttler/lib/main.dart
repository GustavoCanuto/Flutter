import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = "Bem Vindo ao Flutter";
  Color _bgColor = Colors.black;
  int _counter = 0;

  void _changeText() {
    setState(() {
      _counter++;
      _text = "Texto alterado $_counter";
    });
  }

  void _changeBackgroundColor() {
    setState(() {
      _bgColor = (_bgColor == Colors.black) ? Colors.blueGrey : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demonstração Básica flutter"),
      ),
      body: Container(
        color: _bgColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              // Primeira Coluna divisão vertical
              Text(
                _text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              //Segunda Coluna da divisão vertical
              // que vai ter uma linha, divisão horizontal
              // Botões em Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  //primeira divisão horizontal da linha
                  ElevatedButton(
                    onPressed: _changeText,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: const Text("Alterar Texto"),
                  ),

                  const SizedBox(width: 20), // Espaço entre os botões

                  //Segunda divisão horizontal da linha
                  ElevatedButton(
                    onPressed: _changeBackgroundColor,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Cor de fundo do botão
                    ),
                    child: const Text("Alterar Fundo"),
                  ),

                ], // acabou divisão da linah fim do children
              ),

            ], // acabou divisão da coluna fim do children

          ),

        ),
      ),
    );
  }
}



