import '../../domain/entities/work_entity.dart';

class WorkModel extends WorkEntity {
  WorkModel({
    required String occupation,
    required String base,
  }) : super(
          occupation: occupation,
          base: base,
        );

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      occupation: json['occupation'],
      base: json['base'],
    );
  }
}
