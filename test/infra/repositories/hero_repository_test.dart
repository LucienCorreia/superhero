import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:superhero/domain/entities/hero_entity.dart';
import 'package:superhero/infra/data_sources/hero/hero_external_data_source.dart';
import 'package:superhero/infra/models/hero_model.dart';
import 'package:superhero/infra/repositories/hero_repository.dart';

class HeroExternalDataSourceMock implements HeroExternalDataSourceInterface {
  final List<HeroEntity> heroes;

  HeroExternalDataSourceMock(this.heroes);

  @override
  Future<List<HeroEntity>> all() async {
    return heroes;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  List<HeroEntity> heroes = [];
  group('HeroRepository', () {
    setUpAll(() async {
      final json = await rootBundle.loadString('test/assets/jsons/heroes.json');

      List<dynamic> jsonHeroes = jsonDecode(json);

      jsonHeroes.forEach((hero) {
        heroes.add(HeroModel.fromJson(hero));
      });
    });

    test('should list all heroes', () async {
      final heroRepository = HeroRepository(
        heroExternalDataSource: HeroExternalDataSourceMock(heroes),
      );

      final result = await heroRepository.all();

      expect(result, isA<List<HeroEntity>>());
      expect(result.length, 563);
    });
  });
}
