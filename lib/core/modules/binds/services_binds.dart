import 'package:flutter_modular/flutter_modular.dart';

import '../../../external/data_sources/hero/services/api_service.dart';

class ServicesBinds {
  static final binds = [
    Bind<ApiService>(
      (i) => ApiService(
      ),
      isLazy: false,
    ),
  ];
}
