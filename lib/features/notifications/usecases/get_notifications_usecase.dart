import 'package:either_dart/either.dart';

import '../../common/utils/failures.dart';
import '../notification_model.dart';
import '../notification_repository.dart';

class GetNotificationsUsecase {
  final NotificationRepository repository;

  GetNotificationsUsecase(this.repository);

  Future<Either<Failure, List<NotificationModel>>> call() =>
      repository.getNotifications();
}
