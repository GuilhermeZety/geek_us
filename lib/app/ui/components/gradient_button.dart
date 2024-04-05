import 'package:flutter/material.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';

class GradientButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final Widget? prefix;
  final Widget? suffix;

  const GradientButton({
    super.key,
    required this.onPressed,
    this.child,
    this.text,
    this.borderRadius,
    this.width,
    this.height = 44.0,
    this.gradient = AppColors.linearGradient,
    this.prefix,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(100);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child ?? Text(text ?? '', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
      ),
    );
  }
}
