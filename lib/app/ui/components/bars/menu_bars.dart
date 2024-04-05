import 'package:flutter/material.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';
import 'package:geek_us/app/ui/components/bars/app_bar.dart';
import 'package:geek_us/app/ui/components/bars/side_bar.dart';

class MenuScaffold extends StatelessWidget {
  const MenuScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue_800,
      body: Column(
        children: [
          const CustomAppBar(),
          Row(
            children: [
              const SideBar(),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                  color: AppColors.blue_900,
                ),
              ).expanded()
            ],
          ).expanded()
        ],
      ),
    );
  }
}
