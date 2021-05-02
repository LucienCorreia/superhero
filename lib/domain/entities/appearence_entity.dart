import 'package:equatable/equatable.dart';

import 'height_entity.dart';
import 'weight_entity.dart';

class AppearanceEntity extends Equatable {
  final String gender;
  final String race;
  final String eyeColor;
  final String hairColor;
  final HeightEntity height;
  final WeightEntity weight;

  const AppearanceEntity({
    required this.gender,
    required this.race,
    required this.eyeColor,
    required this.hairColor,
    required this.height,
    required this.weight,
  });

  @override
  List<Object?> get props => [
        gender,
        race,
        eyeColor,
        hairColor,
        height,
        weight,
      ];
}
