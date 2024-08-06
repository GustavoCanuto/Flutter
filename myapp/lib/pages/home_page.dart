


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/services/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var quantidadeDeCliques = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu app",
        style: GoogleFonts.pacifico()),
      ),
      body:  Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         
              Expanded(
                child: Container(
                  color: Colors.orange,
                  child: Text("Foi clicado $quantidadeDeCliques vezes",
                  style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
              ),
            
            
              SizedBox(
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.brown,
                  child: Text(numeroGerado.toString(),
                  style: GoogleFonts.acme(fontSize: 20),
                  ),
                ),
              ),


           Expanded(
             child: Container(
              color: Colors.grey,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Expanded(
                  flex: 1,
                   child: 
                     Container(color: Colors.red, child: Text("10")),
                 ),
                Expanded(
                  flex: 2,
                  child: 
                 Container(color: Colors.indigo,child: Text("20")),
                ),
                     Expanded(
                  flex: 1,
                  child: 
                 Container(color: Colors.green,child: Text("30")),
                     ),
                ],
                ),
             ),
           )
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadeDeCliques++;
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(10);
          });
        },
      ),
    );
  }
}