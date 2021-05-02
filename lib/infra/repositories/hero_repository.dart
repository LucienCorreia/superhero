import '../../domain/entities/hero_entity.dart';
import '../../domain/repositories/hero_repository.dart';
import '../data_sources/hero/hero_external_data_source.dart';

class HeroRepository implements HeroRepositoryInterface {
  final HeroExternalDataSourceInterface _heroExternalDataSource;

  HeroRepository({
    required HeroExternalDataSourceInterface heroExternalDataSource,
  }) : _heroExternalDataSource = heroExternalDataSource;

  @override
  Future<List<HeroEntity>> all() async {
    return await _heroExternalDataSource.all();
  }
}
