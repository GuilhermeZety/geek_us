import 'package:flutter/material.dart';
import 'package:geek_us/app/core/common/extensions/context_extension.dart';
import 'package:geek_us/app/ui/components/image_cached.dart';
import 'package:geek_us/app/ui/components/logo.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        children: [
          Logo(
            showName: true,
            width: 250,
          ),
          Spacer(),
          ImageCached(url: 'https://millennium.w2o.com.br/storage/fotos-perfil/01HNVC27AQNS9X7P6NAJ76VQSE.png')
        ],
      ),
    );
  }
}
