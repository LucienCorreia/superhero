import 'package:equatable/equatable.dart';

class HeightEntity extends Equatable {
  final String inch;
  final String centimeters;

  const HeightEntity({
    required this.inch,
    required this.centimeters,
  });

  @override
  List<Object?> get props => [
        inch,
        centimeters,
      ];
}
