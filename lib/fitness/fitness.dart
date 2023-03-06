import 'package:flutter/material.dart';
import 'package:icu/drawer.dart';

class FitnessPage extends StatelessWidget {
  const FitnessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness'),
      ),
      drawer: const NavDrawer(),
      body: const Center(
        child: Text('lmao'),
      ),
    );
  }
}
