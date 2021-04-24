import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart' as extend;
import 'package:key2iq_assignment/presentation/core/theme/colors.dart';
import 'package:key2iq_assignment/presentation/route/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      ExtendedNavigator.of(context).replace(Routes.basePage);
    });
  }

  @override
  Widget build(BuildContext mainContext) {
    const String asset = 'assets/images/logo.png';

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(asset),
            const Center(
              child: CircularProgressIndicator(
                backgroundColor: Kolors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
