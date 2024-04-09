import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.showName, this.width = 350});

  final bool showName;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AnimatedSize(
        alignment: Alignment.centerLeft,
        duration: 500.ms,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DropShadowImage(
              offset: const Offset(0, 0),
              scale: 1,
              blurRadius: 2,
              borderRadius: 0,
              image: Image.asset(
                'assets/images/logo_icon.png',
                width: 60 * (width / 350),
                height: 60 * (width / 350),
                fit: BoxFit.fill,
              ),
            ),
            if (showName) ...[
              const Gap(12),
              Text(
                'GeekUs',
                style: TextStyle(
                  fontSize: 40 * (width / 350),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Piazzolla',
                ),
              ),
            ],
          ],
        ),
      ),
    ).hero('logo');
  }
}
