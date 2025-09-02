class DashboardDataModel {
  final int stats;

  DashboardDataModel(this.stats);

  factory DashboardDataModel.fromJson(Map<String, dynamic> json) =>
      DashboardDataModel(json['stats']);
}
