import '../entities/hero_entity.dart';

class SearchHeroresByNameUseCase {
  List<HeroEntity> call({
    required List<HeroEntity> heroes,
    required String search,
  }) {
    return heroes
        .where(
          (hero) => hero.name.startsWith(search),
        )
        .toList();
  }
}
