import 'package:fast_cached_network_image/fast_cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_us/app/app_module.dart';
import 'package:geek_us/app/app_widget.dart';
import 'package:geek_us/app/core/common/services/path_service.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? storageLocation = await PathService.pathDocuments();
  await FastCachedImageConfig.init(subDir: storageLocation, clearCacheAfter: const Duration(days: 15));

  // Configurações iniciais para o SEO e URL
  if (kIsWeb) {
    MetaSEO().config();
    setPathUrlStrategy();
  }
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
