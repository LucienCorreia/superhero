import '../../domain/entities/weight_entity.dart';

class WeightModel extends WeightEntity {
  WeightModel({
    required String pound,
    required String kilograms,
  }) : super(
          pound: pound,
          kilograms: kilograms,
        );

  factory WeightModel.fromJson(List<dynamic> json) {
    return WeightModel(
      pound: json[0],
      kilograms: json[1],
    );
  }
}
