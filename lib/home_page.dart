import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('We require an API key for now.'),
            TextField(),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
    );
  }
}
