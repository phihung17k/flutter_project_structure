import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/profile_cubit.dart';
import '../widgets/profile_form.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileCubit(context.read<GetProfileUsecase>())..loadProfile(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Profile')),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading) return const LoadingIndicator();
            if (state is ProfileError)
              return AppErrorWidget(message: state.message);
            if (state is ProfileLoaded)
              return ProfileForm(profile: state.profile);
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
