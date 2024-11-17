import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ações da conta',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: BoxCard(
                  boxContent: _AccountActions(
                      icon: Icon(Icons.account_balance_wallet),
                      text: 'Depositar'),
                ),
              ),
              InkWell(
                onTap: (){},
                child: BoxCard(
                  boxContent: _AccountActions(
                      icon: Icon(Icons.cached),
                      text: 'Transferir'),
                ),
              ),
              InkWell(
                onTap: (){},
                child: BoxCard(
                  boxContent: _AccountActions(
                      icon: Icon(Icons.center_focus_strong),
                      text: 'Ler'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActions extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountActions({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
