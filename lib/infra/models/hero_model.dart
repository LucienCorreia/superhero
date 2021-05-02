import '../../domain/entities/hero_entity.dart';
import 'appearance_model.dart';
import 'biography_model.dart';
import 'connections_model.dart';
import 'images_model.dart';
import 'power_stats_model.dart';
import 'work_model.dart';

class HeroModel extends HeroEntity {
  HeroModel({
    required int id,
    required String name,
    required String slug,
    required PowerStatsModel powerStats,
    required AppearanceModel appearance,
    required BiographyModel biography,
    required WorkModel work,
    required ConnectionsModel connections,
    required ImagesModel images,
  }) : super(
          id: id,
          name: name,
          slug: slug,
          powerStats: powerStats,
          appearance: appearance,
          biography: biography,
          work: work,
          connections: connections,
          images: images,
        );

  factory HeroModel.fromJson(Map<String, dynamic> json) {
    return HeroModel(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
      powerStats: PowerStatsModel.fromJson(json['powerstats']),
      appearance: AppearanceModel.fromJson(json['appearance']),
      biography: BiographyModel.fromJson(json['biography']),
      work: WorkModel.fromJson(json['work']),
      connections: ConnectionsModel.fromJson(json['connections']),
      images: ImagesModel.fromJson(json['images']),
    );
  }
}
