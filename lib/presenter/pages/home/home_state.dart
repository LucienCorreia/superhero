import 'package:flutter/material.dart';

import '../../../domain/entities/hero_entity.dart';
import '../../../domain/use_cases/get_heroes_use_case.dart';
import '../../widgets/load_notifier/load_notifier_listenable.dart';

class HomeState extends ChangeNotifier {
  final heroes = LoadNotifierListenable<List<HeroEntity>>([]);

  final GetHeroesUseCase _getHeroesUseCase;

  HomeState({
    required GetHeroesUseCase getHeroesUseCase,
  }) : _getHeroesUseCase = getHeroesUseCase {
    _init();
  }

  void _init() async {
    try {
      heroes.value = await _getHeroesUseCase();
    } catch (e) {
      heroes.setError(e);
    }
  }
}
