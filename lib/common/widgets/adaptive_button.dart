import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final bool isLoading;

  const AdaptiveButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.backgroundColor,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    if (isLoading) {
      return const SizedBox(
        height: 44,
        width: 44,
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (isIOS) {
      return CupertinoButton(
        onPressed: onPressed,
        color: backgroundColor ?? CupertinoColors.activeBlue,
        child: child,
      );
    }

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: child,
    );
  }
}
