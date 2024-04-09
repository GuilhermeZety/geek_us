import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';
import 'package:geek_us/app/core/common/extensions/context_extension.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';
import 'package:geek_us/app/ui/components/menu_bar/app_bar.dart';
import 'package:geek_us/app/ui/components/menu_bar/cubit/menu_bar_cubit.dart';
import 'package:geek_us/app/ui/components/menu_bar/side_bar.dart';

class MenuScaffold extends StatefulWidget {
  const MenuScaffold({super.key, required this.body});

  final Widget body;

  @override
  State<MenuScaffold> createState() => _MenuScaffoldState();
}

class _MenuScaffoldState extends State<MenuScaffold> {
  MenuBarCubit cubit = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.isNotDesktop ? AppColors.blue_900 : AppColors.blue_800,
      drawer: Column(
        children: [
          const SideBar().pRight(24),
        ],
      ),
      body: Column(
        children: [
          const CustomAppBar(),
          Row(
            children: [
              if (!context.isNotDesktop) const SideBar(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(context.isNotDesktop ? 0 : 20)),
                  color: AppColors.blue_900,
                ),
                child: widget.body,
              ).expanded(),
            ],
          ).expanded(),
        ],
      ),
    );
  }
}
