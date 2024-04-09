import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:geek_us/app/modules/home/presentation/pages/home_page.dart';
import 'package:geek_us/app/ui/components/menu_bar/cubit/menu_bar_cubit.dart';

class HomeModule extends Module {
  @override
  void binds(Injector i) {
    i.addSingleton<MenuBarCubit>(() => MenuBarCubit());
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/:index',
      child: (args) {
        return const HomePage();
      },
      transition: TransitionType.fadeIn,
      duration: 500.ms,
    );
  }
}
