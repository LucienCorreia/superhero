import '../../domain/entities/connections_entity.dart';

class ConnectionsModel extends ConnectionsEntity {
  ConnectionsModel({
    required String groupAffiliation,
    required String relatives,
  }) : super(
          groupAffiliation: groupAffiliation,
          relatives: relatives,
        );

  factory ConnectionsModel.fromJson(Map<String, dynamic> json) {
    return ConnectionsModel(
      groupAffiliation: json['groupAffiliation'],
      relatives: json['relatives'],
    );
  }
}
