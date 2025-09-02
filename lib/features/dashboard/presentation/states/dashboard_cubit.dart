import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:either_dart/either.dart';

import '../../domain/entities/dashboard_data.dart';
import '../../domain/usecases/get_dashboard_data_usecase.dart';
import '../../../common/utils/failures.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final GetDashboardDataUsecase usecase;

  DashboardCubit(this.usecase) : super(DashboardInitial());

  Future<void> loadData() async {
    emit(DashboardLoading());
    final result = await usecase();
    result.fold(
      (failure) => emit(DashboardError(failure.message)),
      (data) => emit(DashboardLoaded(data)),
    );
  }
}
