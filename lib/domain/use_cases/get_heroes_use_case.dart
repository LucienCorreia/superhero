import 'package:superhero/domain/repositories/hero_repository.dart';

import '../entities/hero_entity.dart';

class GetHeroesUseCase {
  final HeroRepositoryInterface _heroRepository;

  const GetHeroesUseCase({
    required HeroRepositoryInterface heroRepository,
  }) : _heroRepository = heroRepository;

  Future<List<HeroEntity>> call() async {
    return await _heroRepository.all();
  }
}
