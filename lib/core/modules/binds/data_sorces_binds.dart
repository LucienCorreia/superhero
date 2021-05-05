import 'package:flutter_modular/flutter_modular.dart';

import '../../../external/data_sources/hero/hero_external_data_source.dart';
import '../../../infra/data_sources/hero/hero_external_data_source.dart';

class DataSourcesBinds {
  static final binds = [
    Bind<HeroExternalDataSourceInterface>(
      (i) => HeroExternalDataSource(
        apiService: i.get(),
      ),
    ),
  ];
}
