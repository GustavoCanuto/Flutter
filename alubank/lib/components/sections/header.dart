import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            children: [
              Text('\$1000.00'),
              Text('Balanço disponivel')
            ],
          ),
          Icon(Icons.account_circle),
        ],
      ),
    );
  }
}
