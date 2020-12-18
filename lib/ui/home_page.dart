import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/platform_widget.dart';
import '../widgets/home/description.dart';
import '../widgets/home/refactory_help.dart';
import '../widgets/home/new_insight.dart';
import '../widgets/home/as_seen_on_grid_view.dart';

class HomePage extends StatelessWidget {
  Widget _buildContent(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: CustomScrollView(
        slivers: [
          Description(),
          RefactoryHelp(),
          NewInsight(),
          AsSeenOnTitle(),
          AsSeenOnGridView(),
        ],
      ),
    );
  }

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/refactory.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildIos(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/refactory.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        transitionBetweenRoutes: false,
      ),
      child: _buildContent(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
      androidBuilder: _buildAndroid,
      iosBuilder: _buildIos,
    );
  }
}
