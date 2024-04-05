// import 'package:flextras/flextras.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:gap/gap.dart';
// import 'package:geek_us/app/core/common/constants/app_colors.dart';
// import 'package:geek_us/app/core/shared/app_cache.dart';
// import 'package:url_launcher/url_launcher.dart';

// class SocialMedia extends StatefulWidget {
//   const SocialMedia({super.key, required this.width});

//   final double width;

//   @override
//   State<SocialMedia> createState() => _SocialMediaState();
// }

// class _SocialMediaState extends State<SocialMedia> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: widget.width,
//       child: SeparatedRow(
//         separatorBuilder: () => Gap(widget.width / 7),
//         children: [
//           SocialItem(
//             icon: AppCache.linkedin,
//             width: widget.width / 7,
//             link: Links.linkedin,
//           ),
//           SocialItem(
//             icon: AppCache.instagram,
//             width: widget.width / 8,
//             link: Links.instagram,
//           ),
//           SocialItem(
//             icon: AppCache.tiktok,
//             width: widget.width / 7,
//             link: Links.tiktok,
//           ),
//           SocialItem(
//             icon: AppCache.x,
//             width: widget.width / 7,
//             link: Links.x,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SocialItem extends StatefulWidget {
//   const SocialItem({
//     super.key,
//     required this.icon,
//     required this.width,
//     required this.link,
//   });

//   final Uint8List icon;
//   final double width;
//   final String link;

//   @override
//   State<SocialItem> createState() => _SocialItemState();
// }

// class _SocialItemState extends State<SocialItem> {
//   Color? color;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       onEnter: (_) {
//         color = AppColors.primary;
//         if (mounted) setState(() {});
//       },
//       onExit: (_) {
//         color = null;
//         if (mounted) setState(() {});
//       },
//       child: GestureDetector(
//         onTap: () {
//           launchUrl(
//             Uri.parse(widget.link),
//             mode: LaunchMode.externalApplication,
//           );
//         },
//         child: SvgPicture.memory(
//           widget.icon,
//           width: widget.width,
//           height: widget.width,
//           colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
//         ),
//       ),
//     );
//   }
// }

// class Links {
//   static String linkedin = 'https://www.linkedin.com/company/baoo-market/';
//   static String instagram = 'https://www.instagram.com/baoomarket/';
//   static String tiktok = 'https://www.tiktok.com/@baoomarket';

//   static String x = 'https://twitter.com/BaooMarket/';
// }
