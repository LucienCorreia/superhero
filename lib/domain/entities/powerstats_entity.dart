import 'package:equatable/equatable.dart';

class PowerStatsEntity extends Equatable {
  final int intelligence;
  final int strength;
  final int speed;
  final int durability;
  final int power;
  final int combat;

  const PowerStatsEntity({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  @override
  List<Object?> get props => [
        intelligence,
        strength,
        speed,
        durability,
        power,
        combat,
      ];
}
