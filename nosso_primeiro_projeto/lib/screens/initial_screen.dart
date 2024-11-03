import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/data/task_dao.dart';
import 'package:nosso_primeiro_projeto/data/task_inherited.dart';
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
      body: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Task>>(future: TaskDao().findAll(),builder: (context, snapshot){
          List<Task>? items = snapshot.data;
          switch (snapshot.connectionState){

            case ConnectionState.none:
              // TODO: Handle this case.
            case ConnectionState.waiting:
              // TODO: Handle this case.
            case ConnectionState.active:
              // TODO: Handle this case.
            case ConnectionState.done:
              if(snapshot.hasData && items != null){
                if(items.isNotEmpty){
                  return ListView.builder(itemCount: items.length,itemBuilder: (BuildContext context, int index){
                    final Task tarefa = items[index];
                    return tarefa;
                  });
                }
              }
          }
        } ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(
                taskContext: context,
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
