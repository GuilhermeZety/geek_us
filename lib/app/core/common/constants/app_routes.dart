class AppRoutes {
  static const String splash = '/';
  // static const String apresentation = '/apresentation/';
  // static const String notConnection = '/not_connection/';

  // static final RoutesAuth auth = RoutesAuth();
  static final HomeRoutes home = HomeRoutes();
}

class RoutesAuth {
  static const String _path = '/auth';

  final String login = '$_path/login/';
}

class HomeRoutes {
  static const String _path = '/home';

  String index(int? initialIndex) => '$_path/${initialIndex ?? 'null'}';
}
