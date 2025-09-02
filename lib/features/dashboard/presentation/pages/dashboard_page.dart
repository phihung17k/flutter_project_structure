import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/dashboard_cubit.dart';
import '../widgets/stats_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          DashboardCubit(context.read<GetDashboardDataUsecase>())..loadData(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Dashboard')),
        body: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            if (state is DashboardLoading) return const LoadingIndicator();
            if (state is DashboardError)
              return AppErrorWidget(message: state.message);
            if (state is DashboardLoaded)
              return StatsCard(stats: state.data.stats);
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
