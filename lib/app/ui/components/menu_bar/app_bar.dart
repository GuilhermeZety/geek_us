import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_us/app/core/common/constants/app_colors.dart';
import 'package:geek_us/app/core/common/extensions/context_extension.dart';
import 'package:geek_us/app/core/common/extensions/widget_extension.dart';
import 'package:geek_us/app/ui/components/image_cached.dart';
import 'package:geek_us/app/ui/components/logo.dart';
import 'package:geek_us/app/ui/components/menu_bar/cubit/menu_bar_cubit.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  MenuBarCubit cubit = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<MenuBarCubit, MenuBarState>(
        bloc: cubit,
        builder: (context, state) {
          return Row(
            children: [
              if (context.isNotDesktop)
                IconButton(
                  onPressed: () {
                    //Open drawer
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu_rounded,
                    size: 32,
                  ).gradient(AppColors.linearGradient),
                )
              else
                const Logo(
                  showName: true,
                  width: 230,
                ),
              const Spacer(),
              const ImageCached(
                url: 'https://millennium.w2o.com.br/storage/fotos-perfil/01HNVC27AQNS9X7P6NAJ76VQSE.png', //TODO: User Image
                width: 50,
                height: 50,
                radius: 1000,
              ),
            ],
          );
        },
      ),
    );
  }
}
