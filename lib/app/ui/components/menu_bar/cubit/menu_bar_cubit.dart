import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'menu_bar_state.dart';

class MenuBarCubit extends Cubit<MenuBarState> {
  MenuBarCubit() : super(const MenuBarOpen(width: sideOpenWidth));

  static const double sideOpenWidth = 250;
  static const double sideCloseWidth = 100;

  void toggle() {
    if (state is MenuBarOpen) {
      emit(const MenuBarClose(width: sideCloseWidth));
    } else {
      emit(const MenuBarOpen(width: sideOpenWidth));
    }
  }
}
