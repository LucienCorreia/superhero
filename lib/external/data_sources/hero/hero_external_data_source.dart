import '../../../domain/entities/hero_entity.dart';
import '../../../infra/data_sources/hero/hero_external_data_source.dart';
import '../../../infra/models/hero_model.dart';
import 'services/api_service.dart';

class HeroExternalDataSource implements HeroExternalDataSourceInterface {
  final ApiService _apiService;

  HeroExternalDataSource({
    required ApiService apiService,
  }) : _apiService = apiService;

  @override
  Future<List<HeroEntity>> all() async {
    final response = await _apiService.get('all.json');

    return (response.data as Iterable)
        .map((e) => HeroModel.fromJson(e))
        .toList();
  }
}
