import 'package:flutter/material.dart';

import '../../domain/entities/user_profile.dart';

class ProfileForm extends StatelessWidget {
  final UserProfile profile;

  const ProfileForm({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Name: ${profile.name}'),
        Text('Email: ${profile.email}'),
      ],
    );
  }
}
