import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BoxCard(content: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pontos Totais:'),
                  Text('3000', style: Theme.of(context).textTheme.bodyLarge,),
                  Divider(),
                  Text('Objetivos', style: Theme.of(context).textTheme.titleLarge,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ColorDot(color: ThemeColors.points['income']),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('Entrega grátis: 15000pts'),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ColorDot(color: ThemeColors.points['streaming']),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('1 mês de streaming: 30000pts'),
                        )
                      ],
                    ),
                  ),
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}
