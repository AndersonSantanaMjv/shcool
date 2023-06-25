import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:shcool/components/body_component.dart';
import 'package:shcool/components/spacer_component.dart';
import 'package:shcool/pages/detalhe/components/detalhe_header.dart';
import 'package:shcool/providers/afazer_provider.dart';
import 'package:shcool/services/picker_service.dart';

import '../../components/app_bar_component.dart';

class DetalhePage extends StatefulWidget {
  const DetalhePage({super.key});

  @override
  State<DetalhePage> createState() => _DetalhePageState();
}

class _DetalhePageState extends State<DetalhePage> {
  late AfazerProvider store;
  late int index;

  void onEditImage() async {
    final pickerService = PickerService();
    final image = await pickerService.getImage(ImageSource.gallery);
    if (image != null) {
      final base64 = pickerService.base64(await image.readAsBytes());
      store.atualizarItemAfazer(0, base64);
    }
  }

  @override
  Widget build(BuildContext context) {
    index = 0;
    store = Provider.of<AfazerProvider>(context);
    final item = store.listaAfazeres.elementAt(index ?? 0);
    return BodyComponent(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetalheHeaderWidget(
            onEdit: onEditImage,
            item: item,
          ),
          const SpacerComponent(),
          Text(item.titulo,
              textAlign: TextAlign.left, style: const TextStyle(fontSize: 20)),
          SizedBox(
            height: MediaQuery.of(context).size.height - 450,
            child: ListView.builder(
              itemCount: item.conteudos.length,
              itemBuilder: (context, index) {
                final conteudo = item.conteudos[index];
                return CheckboxListTile(
                  value: conteudo.isChecked,
                  title: Text(conteudo.titulo),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (value) {
                    setState(() {
                      conteudo.isChecked = value!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
