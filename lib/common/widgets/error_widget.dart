import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  final String message;

  const AppErrorWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Text(message, style: const TextStyle(color: Colors.red));
  }
}

class ErrorWidgetCustom {
  static void show(BuildContext context, String errorMessage) {
    // final l10n = AppLocalizations.of(context);
    final snackBar = SnackBar(
      content: Text(
        // errorMessage.isNotEmpty
        //     ? errorMessage
        //     : l10n?.genericError ??
        'An error occurred',
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.redAccent,
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label:
            // l10n?.dismiss ??
            'Dismiss',
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
