import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:geek_us/app/core/common/constants/app_assets.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';
import 'package:geek_us/app/core/common/constants/app_fonts.dart';
import 'package:geek_us/app/core/common/extensions/context_extension.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';
import 'package:geek_us/app/ui/components/logo.dart';
import 'package:geek_us/app/ui/components/menu_bar/cubit/menu_bar_cubit.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    super.key,
  });

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  MenuBarCubit cubit = Modular.get();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBarCubit, MenuBarState>(
      bloc: cubit,
      builder: (context, state) {
        bool oppened = state is MenuBarOpen;
        return AnimatedContainer(
          duration: 300.ms,
          height: context.height,
          color: AppColors.blue_800,
          width: state.width,
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              if (!context.isNotDesktop)
                Row(
                  mainAxisAlignment: oppened ? MainAxisAlignment.end : MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: cubit.toggle,
                      icon: Icon(
                        oppened ? Icons.keyboard_double_arrow_left_rounded : Icons.keyboard_double_arrow_right_rounded,
                        color: AppColors.grey_600,
                        size: 30,
                      ),
                    ),
                  ],
                )
              else
                const Logo(
                  showName: true,
                  width: 200,
                ).pBottom(42),
              SeparatedColumn(
                separatorBuilder: () => const Gap(61),
                children: [
                  SideBarMenu(
                    title: 'Home',
                    itens: [
                      SideBarMenuItem(
                        id: 'init',
                        title: 'Inicio',
                        isActive: true,
                        iconAsset: AppAssets.svgs.home,
                      ),
                      SideBarMenuItem(
                        id: 'recent',
                        title: 'Recente',
                        isActive: false,
                        iconAsset: AppAssets.svgs.history,
                      ),
                    ],
                  ),
                  SideBarMenu(
                    title: 'Biblioteca',
                    itens: [
                      SideBarMenuItem(
                        id: 'favorite',
                        title: 'Favoritos',
                        isActive: false,
                        iconAsset: AppAssets.svgs.like,
                      ),
                      SideBarMenuItem(
                        id: 'downloaded',
                        title: 'Baixados',
                        isActive: false,
                        iconAsset: AppAssets.svgs.download,
                      ),
                      SideBarMenuItem(
                        id: 'whatched',
                        title: 'Assistidos',
                        isActive: false,
                        iconAsset: AppAssets.svgs.eye,
                      ),
                      SideBarMenuItem(
                        id: 'whatched_late',
                        title: 'Assistir mais tarde',
                        isActive: false,
                        iconAsset: AppAssets.svgs.clock,
                      ),
                    ],
                  ),
                  SideBarMenu(
                    title: 'Geral',
                    itens: [
                      SideBarMenuItem(
                        id: 'config',
                        title: 'Configurações',
                        isActive: false,
                        iconAsset: AppAssets.svgs.settings,
                      ),
                      SideBarMenuItem(
                        id: 'help',
                        title: 'Ajuda',
                        isActive: false,
                        iconAsset: AppAssets.svgs.info,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class SideBarMenu extends StatelessWidget {
  const SideBarMenu({super.key, required this.itens, required this.title});

  final List<SideBarMenuItem> itens;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.white,
            fontWeight: AppFonts.bold,
            fontSize: 20,
          ),
        ),
        const Gap(24),
        SeparatedColumn(
          separatorBuilder: () => const Gap(16),
          children: itens,
        ),
      ],
    );
  }
}

class SideBarMenuItem extends StatelessWidget {
  const SideBarMenuItem({super.key, required this.id, required this.title, required this.isActive, required this.iconAsset});

  final String id;
  final String title;
  final String iconAsset;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: isActive ? AppColors.linearGradient : null,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          SvgPicture.asset(
            iconAsset,
            colorFilter: ColorFilter.mode(
              isActive ? AppColors.white : AppColors.grey_400,
              BlendMode.srcIn,
            ),
          ),
          const Gap(14),
          Text(
            title,
            style: TextStyle(
              color: isActive ? AppColors.white : AppColors.grey_400,
              fontWeight: AppFonts.semiBold,
            ),
          ),
        ],
      ),
    );
  }
}
