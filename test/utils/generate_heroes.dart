import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:superhero/domain/entities/appearence_entity.dart';
import 'package:superhero/domain/entities/biography_entity.dart';
import 'package:superhero/domain/entities/connections_entity.dart';
import 'package:superhero/domain/entities/height_entity.dart';
import 'package:superhero/domain/entities/hero_entity.dart';
import 'package:superhero/domain/entities/images_entity.dart';
import 'package:superhero/domain/entities/powerstats_entity.dart';
import 'package:superhero/domain/entities/weight_entity.dart';
import 'package:superhero/domain/entities/work_entity.dart';

Future<List<HeroEntity>> generateHeroes() async {
  final heroes = <HeroEntity>[];

  final json = await rootBundle.loadString('test/assets/jsons/heroes.json');

  List<dynamic> jsonHeroes = jsonDecode(json);

  jsonHeroes.forEach((value) {
    final powerStats = value['powerstats'];
    final images = value['images'];
    final appearance = value['appearance'];
    final height = appearance['height'];
    final weight = appearance['weight'];
    final biography = value['biography'];
    final work = value['work'];
    final connections = value['connections'];

    heroes.add(
      HeroEntity(
        id: value['id'],
        name: value['name'],
        slug: value['slug'],
        powerStats: PowerStatsEntity(
          intelligence: powerStats['intelligence'],
          strength: powerStats['strength'],
          speed: powerStats['speed'],
          durability: powerStats['durability'],
          power: powerStats['power'],
          combat: powerStats['combat'],
        ),
        appearance: AppearanceEntity(
          gender: appearance['gender'],
          race: appearance['race'],
          eyeColor: appearance['eyeColor'],
          hairColor: appearance['hairColor'],
          height: HeightEntity(
            inch: height[0],
            centimeters: height[1],
          ),
          weight: WeightEntity(
            pound: weight[0],
            kilograms: weight[1],
          ),
        ),
        biography: BiographyEntity(
          fullName: biography['fullName'],
          alterEgos: biography['alterEgos'],
          aliases: (biography['aliases'] as Iterable)
              .map((e) => String.fromEnvironment(e ?? ''))
              .toList(),
          placeOfBirth: biography['placeOfBirth'],
          firstAppearance: biography['firstAppearance'],
          publisher: biography['publisher'],
          alignment: biography['alignment'],
        ),
        work: WorkEntity(
          occupation: work['occupation'],
          base: work['base'],
        ),
        connections: ConnectionsEntity(
          groupAffiliation: connections['groupAffiliation'],
          relatives: connections['relatives'],
        ),
        images: ImagesEntity(
          xs: images['xs'],
          sm: images['sm'],
          md: images['md'],
          lg: images['lg'],
        ),
      ),
    );
  });

  return heroes;
}
