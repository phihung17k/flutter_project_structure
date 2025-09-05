import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/widgets/adaptive_button.dart';
import '../../../../infrastructure/router/route_names.dart';
import '../../../authentication/presentation/states/auth_bloc.dart';
import '../../../authentication/presentation/states/auth_event.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final l10n = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // l10n?.dashboard ??
          'Dashboard',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdaptiveButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to LoginPage
              },
              child: Text(
                // l10n?.back ??
                'Back to Login',
              ),
            ),
            const SizedBox(height: 16),
            AdaptiveButton(
              onPressed: () {
                context.read<AuthBloc>().add(LogoutEvent());
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteNames.login,
                  (route) => false,
                );
              },
              child: Text(
                // l10n?.logout ??
                'Logout',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
