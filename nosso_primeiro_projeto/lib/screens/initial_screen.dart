import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Container(),
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: const [
          Task("Aprendendo Flutter no cafe da manha comendo sucrilhos",
              'assets/images/img1.jpg', 2),
          Task('Andar de Bike', 'assets/images/img3.jpeg', 3),
          Task('Meditar', 'assets/images/img2.jpeg', 5),
          Task("Aprendendo Flutter", 'assets/images/img1.jpg', 3),
          Task('Andar de Bike', 'assets/images/img2.jpeg', 4),
          Task('Meditar', 'assets/images/img1.jpg', 1),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
