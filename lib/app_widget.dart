import 'package:flutter/material.dart';
import 'package:shcool/pages/home/home_page.dart';

import 'components/icon_button_compoment.dart';
import 'components/spacer_component.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: HomePage(),
    );
  }
}
