import '../entities/hero_entity.dart';

class SearchHeroresByNameUseCase {
  List<HeroEntity> call({
    required List<HeroEntity> heroes,
    required String search,
  }) {
    search = search.toLowerCase();

    return heroes
        .where(
          (hero) => hero.name.toLowerCase().startsWith(search),
        )
        .toList();
  }
}
