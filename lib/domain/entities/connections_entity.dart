import 'package:equatable/equatable.dart';

class ConnectionsEntity extends Equatable {
  final String groupAffiliation;
  final String relatives;

  const ConnectionsEntity({
    required this.groupAffiliation,
    required this.relatives,
  });

  @override
  List<Object?> get props => [
        groupAffiliation,
        relatives,
      ];
}
