import 'package:flutter/material.dart';

import '../../../../domain/entities/hero_entity.dart';
import '../../../themes/app_theme.dart';

class CardWidget extends StatelessWidget {
  final HeroEntity hero;
  final bool lastItem;

  const CardWidget({
    required this.hero,
    this.lastItem = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) => Container(
        color: AppTheme.primaryColor,
        child: Column(
          children: [
            Card(
              elevation: 0,
              margin: EdgeInsets.zero,
              color: AppTheme.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.75,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${hero.name} \t',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    hero.slug,
                                    style: TextStyle(
                                      color: Colors.white70,
                                    ),
                                  ),
                                ],
                              ),
                              if (hero.biography.fullName.isNotEmpty)
                                Text(
                                  hero.biography.fullName,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              SizedBox(height: 16),
                              Text(hero.connections.groupAffiliation),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(hero.images.sm),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            if (!lastItem)
              Divider(
                color: AppTheme.secondaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
