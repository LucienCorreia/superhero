import 'package:equatable/equatable.dart';

class ImagesEntity extends Equatable {
  final String xs;
  final String sm;
  final String md;
  final String lg;

  const ImagesEntity({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
  });

  @override
  List<Object?> get props => [
        xs,
        sm,
        md,
        lg,
      ];
}
