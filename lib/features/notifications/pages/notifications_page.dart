import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/notifications_cubit.dart';
import '../widgets/notification_tile.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NotificationsCubit(context.read<GetNotificationsUsecase>())
            ..loadNotifications(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: BlocBuilder<NotificationsCubit, NotificationsState>(
          builder: (context, state) {
            if (state is NotificationsLoading) return const LoadingIndicator();
            if (state is NotificationsError)
              return AppErrorWidget(message: state.message);
            if (state is NotificationsLoaded)
              return ListView.builder(
                itemCount: state.notifications.length,
                itemBuilder: (context, index) =>
                    NotificationTile(notification: state.notifications[index]),
              );
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
