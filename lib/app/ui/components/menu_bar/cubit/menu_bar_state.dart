part of 'menu_bar_cubit.dart';

sealed class MenuBarState extends Equatable {
  const MenuBarState({
    required this.width,
  });

  final double width;

  @override
  List<Object> get props => [width];
}

final class MenuBarOpen extends MenuBarState {
  const MenuBarOpen({
    required super.width,
  });
}

final class MenuBarClose extends MenuBarState {
  const MenuBarClose({
    required super.width,
  });
}
