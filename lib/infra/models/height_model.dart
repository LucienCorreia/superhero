import '../../domain/entities/height_entity.dart';

class HeightModel extends HeightEntity {
  HeightModel({
    required String inch,
    required String centimeters,
  }) : super(
          inch: inch,
          centimeters: centimeters,
        );

  factory HeightModel.fromJson(List<dynamic> json) {
    return HeightModel(
      inch: json[0],
      centimeters: json[1],
    );
  }
}
