import 'package:flutter/cupertino.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class TaskInherited extends InheritedWidget {
   TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task("Aprendendo Flutter no cafe da manha comendo sucrilhos",
        'assets/images/img1.jpg', 2),
    Task('Andar de Bike', 'assets/images/img3.jpeg', 3),
    Task('Meditar', 'assets/images/img2.jpeg', 5),
    Task("Aprendendo Flutter", 'assets/images/img1.jpg', 3),
    Task('Andar de Bike', 'assets/images/img2.jpeg', 4),
    Task('Meditar', 'assets/images/img1.jpg', 1),
  ];

  void newTask(String name, String photo, int difficulty){
      taskList.add(Task(name, photo, difficulty));
  }
  
  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
