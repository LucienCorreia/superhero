import 'package:equatable/equatable.dart';

class BiographyEntity extends Equatable {
  final String fullName;
  final String alterEgos;
  final List<String> aliases;
  final String placeOfBirth;
  final String firstAppearance;
  final String publisher;
  final String alignment;

  const BiographyEntity({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  @override
  List<Object?> get props => [
        fullName,
        alterEgos,
        aliases,
        placeOfBirth,
        firstAppearance,
        publisher,
        alignment,
      ];
}
