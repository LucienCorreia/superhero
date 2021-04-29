import 'package:equatable/equatable.dart';

class WorkEntity extends Equatable {
  final String occupation;
  final String base;

  const WorkEntity({
    required this.occupation,
    required this.base,
  });

  @override
  List<Object?> get props => [
        occupation,
        base,
      ];
}
