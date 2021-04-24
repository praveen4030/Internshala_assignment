import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'package:key2iq_assignment/application/quiz/quiz_bloc.dart';
import 'package:key2iq_assignment/presentation/base/base.dart';
import 'package:key2iq_assignment/presentation/core/theme/theme.dart';
import 'package:key2iq_assignment/presentation/route/router.gr.dart' as route;

import '../../../injection.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zealth Assignment',
      debugShowCheckedModeBanner: false,
      builder: extend.ExtendedNavigator(
        router: route.Router(),
        navigatorKey: navigatorKey,
      ),
      home: const BasePage(),
      theme: appThemeData,
    );
  }
}
