import 'package:flutter/material.dart';
import 'package:alubank/themes/theme_colors.dart';
class Header extends StatelessWidget {
   Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: ThemeColors.headerGradient
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text('\$1000.00', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
                Text.rich(
                  TextSpan(
                    text: '\$',
                   // style: TextStyle(fontSize: 16), NÃO PRECISA DESSA LINHA PQ JA TA NO TEMA
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        style: Theme.of(context).textTheme.bodyLarge,
                    //    style: TextStyle(
                    //        fontSize: 28, fontWeight: FontWeight.bold), 
                    // NÃO PRECISA DESSA LINHA PQ JA TA NO TEMA
                      ),
                    ],
                  ),
                ),
                Text(
                  'Balanço disponivel',
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
