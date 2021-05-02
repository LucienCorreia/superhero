import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter_test/flutter_test.dart';
import 'package:superhero/domain/entities/appearence_entity.dart';
import 'package:superhero/domain/entities/biography_entity.dart';
import 'package:superhero/domain/entities/connections_entity.dart';
import 'package:superhero/domain/entities/height_entity.dart';
import 'package:superhero/domain/entities/hero_entity.dart';
import 'package:superhero/domain/entities/images_entity.dart';
import 'package:superhero/domain/entities/powerstats_entity.dart';
import 'package:superhero/domain/entities/weight_entity.dart';
import 'package:superhero/domain/entities/work_entity.dart';
import 'package:superhero/domain/repositories/hero_repository.dart';
import 'package:superhero/domain/use_cases/get_heroes_use_case.dart';

import '../../utils/generate_heroes.dart';

class HeroRepositoryMock implements HeroRepositoryInterface {
  final List<HeroEntity> heroes;

  HeroRepositoryMock(this.heroes);

  @override
  Future<List<HeroEntity>> all() async {
    return heroes;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('GetHeroesUseCase', () {
    List<HeroEntity> heroes = [];

    setUpAll(() async {
      heroes = await generateHeroes();
    });

    test('should all heroes', () async {
      final getHeroesUseCase = GetHeroesUseCase(
        heroRepository: HeroRepositoryMock(heroes),
      );

      final result = await getHeroesUseCase();

      expect(result, isA<List<HeroEntity>>());
      expect(result.length, 563);
    });
  });
}
