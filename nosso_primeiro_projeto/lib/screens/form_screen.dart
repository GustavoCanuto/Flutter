import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}
//https://cdn.pixabay.com/photo/2024/02/26/19/39/monochrome-image-8598798_640.jpg
class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Nova Tarefa',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 580,
            width: 375,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Nome',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: difficultyController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'dificuldade',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    onChanged: (text){
                        setState(() {
          
                        });
                    },
                    controller: imageController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'image',
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.blue),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        imageController.text,
                        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                          return Image.asset('assets/images/nophoto.jpg');
                        },
                        fit: BoxFit.cover),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Adicionar!',  style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}