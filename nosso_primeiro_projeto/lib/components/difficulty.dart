import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class Difficulty extends StatelessWidget {

  final int dificultyLevel;

  const Difficulty({
    required this.dificultyLevel,
    super.key,
    required this.widget,
  });

  final Task widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: 15, color: (widget.dificuldade >= 1) ? Colors.blue : Colors.blue[100],),
        Icon(Icons.star, size: 15, color: (dificultyLevel >= 2) ? Colors.blue : Colors.blue[100],),
        Icon(Icons.star, size: 15, color: (dificultyLevel >= 3) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (dificultyLevel >= 4) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (dificultyLevel >= 5) ? Colors.blue : Colors.blue[100]),
      ],
    );
  }
}