import 'package:either_dart/either.dart';

import '../common/utils/failures.dart';
import 'notification_model.dart';

abstract class NotificationRepository {
  Future<Either<Failure, List<NotificationModel>>> getNotifications();
}
