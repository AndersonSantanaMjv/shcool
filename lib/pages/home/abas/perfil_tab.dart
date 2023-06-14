import 'package:flutter/material.dart';

import '../../../components/icon_button_compoment.dart';
import '../../../components/spacer_component.dart';

class PerfilTab extends StatelessWidget {
  const PerfilTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  const CircleAvatar(
                    child: Text('A'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    'Anderson Santana',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SpacerComponent(isFull: true),
                  IconButtonComponent(
                    icon: Icons.more_vert,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          const SpacerComponent(),
          const Text(
            'Minhas Estastísticas',
            style: TextStyle(fontSize: 18),
          ),
          const SpacerComponent(),
          const Row(
            children: [
              Icon(Icons.list),
              SizedBox(
                width: 8,
              ),
              Text('Total de notas'),
              Text('0'),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.done_all,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Concluídas'),
              Text('0'),
            ],
          ),
          const SpacerComponent(),
          const Divider(),
          const SpacerComponent(),
          const Text(
            'Configurações',
            style: TextStyle(fontSize: 18),
          ),
          const SpacerComponent(),
          Row(
            children: [
              Text('Tema escuro'),
              const Spacer(),
              Switch(value: true, onChanged: (val) {}),
            ],
          ),
        ],
      ),
    );
  }
}
