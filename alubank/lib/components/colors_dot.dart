import 'package:flutter/material.dart';

class ColorsDot extends StatelessWidget {
final Color? color;
const ColorsDot({ Key? key, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }
}