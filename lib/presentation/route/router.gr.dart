// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../base/base.dart';
import '../base/community/compete_now/compete_now.dart';
import '../core/pages/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String basePage = '/base-page';
  static const String competeNowPage = '/compete-now-page';
  static const all = <String>{
    splashPage,
    basePage,
    competeNowPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.basePage, page: BasePage),
    RouteDef(Routes.competeNowPage, page: CompeteNowPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const SplashPage(),
        settings: data,
      );
    },
    BasePage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const BasePage(),
        settings: data,
      );
    },
    CompeteNowPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const CompeteNowPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushBasePage() => push<dynamic>(Routes.basePage);

  Future<dynamic> pushCompeteNowPage() => push<dynamic>(Routes.competeNowPage);
}
