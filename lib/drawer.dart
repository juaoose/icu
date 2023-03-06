import 'package:flutter/material.dart';

// TODO(juaoose) handle navigation
class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Fitness'),
            leading: const Icon(Icons.trending_up),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Profile'),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Settings'),
            leading: const Icon(Icons.settings),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
