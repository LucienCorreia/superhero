import '../../../domain/entities/hero_entity.dart';

abstract class HeroExternalDataSourceInterface {
  Future<List<HeroEntity>> all();
}
