import 'package:flutter/material.dart';
import 'package:icu/intervals_api.dart';
import 'package:icu/profile/profile.dart';

class ProfilePage extends StatelessWidget {
  final IntervalsAPI api;

  const ProfilePage({
    super.key,
    required this.api,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: FutureBuilder<Profile>(
        future: api.getUserProfile('12200411'),
        builder: (context, snapshot) {
          if (snapshot.hasData == false) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return const Center(
              child: Text('An error ocurred loading this profile.'),
            );
          }

          final profile = snapshot.data!;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  foregroundImage: NetworkImage(
                    profile.athlete.profilePicture,
                  ),
                ),
                Text(profile.athlete.id),
                Text(profile.athlete.name),
                Text(profile.athlete.sex),
              ],
            ),
          );
        },
      ),
    );
  }
}
