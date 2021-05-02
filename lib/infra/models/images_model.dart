import '../../domain/entities/images_entity.dart';

class ImagesModel extends ImagesEntity {
  ImagesModel({
    required String xs,
    required String sm,
    required String md,
    required String lg,
  }) : super(
          xs: xs,
          sm: sm,
          md: md,
          lg: lg,
        );

  factory ImagesModel.fromJson(Map<String, dynamic> json) {
    return ImagesModel(
      xs: json['xs'],
      sm: json['sm'],
      md: json['md'],
      lg: json['lg'],
    );
  }
}
