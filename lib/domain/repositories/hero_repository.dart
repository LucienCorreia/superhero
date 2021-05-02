import '../entities/hero_entity.dart';

abstract class HeroRepositoryInterface {
  Future<List<HeroEntity>> all();
}
