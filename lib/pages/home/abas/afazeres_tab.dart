import 'package:flutter/material.dart';
import 'package:shcool/components/spacer_component.dart';

class AfazeresTab extends StatefulWidget {
  final int valorInicial;
  final void Function(int tabIndx)? callback;

  const AfazeresTab({super.key, required this.valorInicial, this.callback});

  @override
  State createState() => _AfazeresTab();
}

class _AfazeresTab extends State<AfazeresTab> {
  late int acumulador;

  void somarMaisUm() {
    setState(() {
      acumulador++;
    });
  }

  void handleCallBack() {
    if (widget.callback != null) {
      widget.callback!(1);
    }
  }

  @override
  void initState() {
    acumulador = widget.valorInicial;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$acumulador'),
        const SpacerComponent(),
        ElevatedButton(
            onPressed: () {
              somarMaisUm();
            },
            child: const Text('+1')),
        const SpacerComponent(),
        ElevatedButton(onPressed: handleCallBack, child: const Text('data')),
      ],
    );
  }
}
