import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _abas = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Perfil'),
    ];

    final List<Widget> _conteudos = [
      const Text('home'),
      const Text('perfil'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('School')),
      body: _conteudos.elementAt(0),
      bottomNavigationBar: BottomNavigationBar(
        items: _abas,
        currentIndex: 0,
      ),
    );
  }
}
