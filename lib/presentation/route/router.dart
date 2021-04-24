import 'package:auto_route/auto_route_annotations.dart';
import 'package:key2iq_assignment/presentation/base/base.dart';
import 'package:key2iq_assignment/presentation/base/community/compete_now/compete_now.dart';
import 'package:key2iq_assignment/presentation/core/pages/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: BasePage),
      MaterialRoute(page: CompeteNowPage),
    ])
class $Router {}
