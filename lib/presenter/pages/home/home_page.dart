import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/entities/hero_entity.dart';
import '../../themes/app_theme.dart';
import '../../widgets/load_notifier/load_notifier_builder_widget.dart';
import 'home_state.dart';
import 'widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text('Super Heroes'),
        backgroundColor: AppTheme.primaryColor,
        elevation: 0,
      ),
      body: LoadNotifierBuilderWidget<List<HeroEntity>?>(
        onLoading: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              AppTheme.secondaryColor,
            ),
          ),
        ),
        onError: (_, error) => Center(
          child: Text(
            '$error',
          ),
        ),
        onDone: (_, heroes) => ListView.builder(
          itemBuilder: (_, index) => CardWidget(
            hero: heroes![index],
          ),
        ),
        valueListenable: controller.heroes,
      ),
    );
  }
}
