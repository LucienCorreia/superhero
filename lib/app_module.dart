import 'package:flutter_modular/flutter_modular.dart';

import 'core/modules/binds/data_sorces_binds.dart';
import 'core/modules/binds/repositories_binds.dart';
import 'core/modules/binds/services_binds.dart';
import 'core/modules/binds/use_cases_binds.dart';
import 'core/modules/home_module.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    ...DataSourcesBinds.binds,
    ...RepositoriesBinds.binds,
    ...ServicesBinds.binds,
    ...UseCasesBinds.binds,
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
