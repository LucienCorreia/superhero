import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/repositories/hero_repository.dart';
import '../../../infra/repositories/hero_repository.dart';

class RepositoriesBinds {
  static final binds = [
    Bind<HeroRepositoryInterface>(
      (i) => HeroRepository(
        heroExternalDataSource: i.get(),
      ),
    ),
  ];
}
