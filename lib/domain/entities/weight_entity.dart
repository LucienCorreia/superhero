import 'package:equatable/equatable.dart';

class WeightEntity extends Equatable {
  final String pound;
  final String kilograms;

  const WeightEntity({
    required this.pound,
    required this.kilograms,
  });

  @override
  List<Object?> get props => [
        pound,
        kilograms,
      ];
}
