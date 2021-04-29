import 'package:equatable/equatable.dart';

import 'apparence_entity.dart';
import 'biography_entity.dart';
import 'connections_entity.dart';
import 'images_entity.dart';
import 'powerstats_entity.dart';
import 'work_entity.dart';

class HeroEntity extends Equatable {
  final int id;
  final String name;
  final String slug;
  final PowerStatsEntity powerStats;
  final ApparenceEntity apparence;
  final BiographyEntity biography;
  final WorkEntity work;
  final ConnectionsEntity connections;
  final ImagesEntity images;

  const HeroEntity({
    required this.id,
    required this.name,
    required this.slug,
    required this.powerStats,
    required this.apparence,
    required this.biography,
    required this.work,
    required this.connections,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        slug,
        powerStats,
        apparence,
        biography,
        work,
        connections,
        images,
      ];
}
