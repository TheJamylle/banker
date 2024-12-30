import 'package:alubank/components/box_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Ações da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: BoxCard(
                    content: _AccountActions(
                        icon: Icon(Icons.account_balance_wallet),
                        text: 'Depositar')),
              ),
              InkWell(
                onTap: (){},
                child: BoxCard(
                    content: _AccountActions(
                        icon: Icon(Icons.cached),
                        text: 'Transferir')),
              ),
              InkWell(
                onTap: (){},
                child: BoxCard(
                    content: _AccountActions(
                        icon: Icon(Icons.center_focus_strong),
                        text: 'Ler')),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _AccountActions extends StatelessWidget {
  final Icon icon;
  final String text;

  _AccountActions({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 75,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: icon,
          ),
          Text(text)
        ],
      ),
    );
  }
}
