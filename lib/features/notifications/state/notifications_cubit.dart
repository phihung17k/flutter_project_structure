import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_dart/either.dart';

import '../notification_model.dart';
import '../usecases/get_notifications_usecase.dart';
import '../../common/utils/failures.dart';

part 'notifications_state.dart';

class NotificationsCubit extends Cubit<NotificationsState> {
  final GetNotificationsUsecase usecase;

  NotificationsCubit(this.usecase) : super(NotificationsInitial());

  Future<void> loadNotifications() async {
    emit(NotificationsLoading());
    final result = await usecase();
    result.fold(
      (failure) => emit(NotificationsError(failure.message)),
      (notifications) => emit(NotificationsLoaded(notifications)),
    );
  }
}
