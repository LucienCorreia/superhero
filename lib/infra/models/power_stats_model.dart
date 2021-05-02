import '../../domain/entities/powerstats_entity.dart';

class PowerStatsModel extends PowerStatsEntity {
  PowerStatsModel({
    required int intelligence,
    required int strength,
    required int speed,
    required int durability,
    required int power,
    required int combat,
  }) : super(
          intelligence: intelligence,
          strength: strength,
          speed: speed,
          durability: durability,
          power: power,
          combat: combat,
        );

  factory PowerStatsModel.fromJson(Map<String, dynamic> json) {
    return PowerStatsModel(
      intelligence: json['intelligence'],
      strength: json['strength'],
      speed: json['speed'],
      durability: json['durability'],
      power: json['power'],
      combat: json['combat'],
    );
  }
}
