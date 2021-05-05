import '../../domain/entities/appearence_entity.dart';
import 'height_model.dart';
import 'weight_model.dart';

class AppearanceModel extends AppearanceEntity {
  AppearanceModel({
    required String gender,
    required String? race,
    required String eyeColor,
    required String hairColor,
    required HeightModel height,
    required WeightModel weight,
  }) : super(
          gender: gender,
          race: race,
          eyeColor: eyeColor,
          hairColor: hairColor,
          height: height,
          weight: weight,
        );

  factory AppearanceModel.fromJson(Map<String, dynamic> json) {
    return AppearanceModel(
      gender: json['gender'],
      race: json['race'],
      eyeColor: json['eyeColor'],
      hairColor: json['hairColor'],
      height: HeightModel.fromJson(json['height']),
      weight: WeightModel.fromJson(json['weight']),
    );
  }
}
