import '../../domain/entities/biography_entity.dart';

class BiographyModel extends BiographyEntity {
  BiographyModel({
    required String fullName,
    required String alterEgos,
    required List<String> aliases,
    required String placeOfBirth,
    required String firstAppearance,
    required String? publisher,
    required String alignment,
  }) : super(
          fullName: fullName,
          alterEgos: alterEgos,
          aliases: aliases,
          placeOfBirth: placeOfBirth,
          firstAppearance: firstAppearance,
          publisher: publisher,
          alignment: alignment,
        );

  factory BiographyModel.fromJson(Map<String, dynamic> json) {
    return BiographyModel(
      fullName: json['fullName'],
      alterEgos: json['alterEgos'],
      aliases: (json['aliases'] as Iterable)
          .map((e) => String.fromEnvironment(e ?? ''))
          .toList(),
      placeOfBirth: json['placeOfBirth'],
      firstAppearance: json['firstAppearance'],
      publisher: json['publisher'],
      alignment: json['alignment'],
    );
  }
}
