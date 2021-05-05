import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/use_cases/get_heroes_use_case.dart';

class UseCasesBinds {
  static final binds = [
    Bind<GetHeroesUseCase>(
      (i) => GetHeroesUseCase(
        heroRepository: i.get(),
      ),
    ),
  ];
}
