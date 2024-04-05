import 'package:flutter/material.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';
import 'package:geek_us/app/core/common/extensions/context_extension.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height,
      color: AppColors.blue_800,
      width: 250,
    );
  }
}
