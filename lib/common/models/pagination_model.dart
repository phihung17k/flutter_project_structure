import '../entities/pagination.dart';

class PaginationModel extends Pagination {
  PaginationModel({required super.page, required super.totalPages});

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      PaginationModel(page: json['page'], totalPages: json['total_pages']);
}
