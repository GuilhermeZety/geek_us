// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_us/app/core/common/constants/app_routes.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';
import 'package:geek_us/app/ui/components/logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool showName = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Future.delayed(
        500.ms,
        () => setState(() => showName = true),
      );
      Future.delayed(
        2000.ms,
        () => Modular.to.pushNamedAndRemoveUntil(AppRoutes.home.index(null), (p0) => false),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Logo(
              showName: showName,
            ).pH(12),
          ),
        ],
      ),
    );
  }
}
