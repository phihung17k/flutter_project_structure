import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final int stats;

  const StatsCard({super.key, required this.stats});

  @override
  Widget build(BuildContext context) {
    return Card(child: Text('Stats: $stats'));
  }
}
