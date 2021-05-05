import 'package:flutter_modular/flutter_modular.dart';

import '../../presenter/pages/home/home_page.dart';
import '../../presenter/pages/home/home_state.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind<HomeState>(
      (i) => HomeState(
        getHeroesUseCase: i.get(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => HomePage(),
    ),
  ];
}
