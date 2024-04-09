class AppAssets {
  static const String path = 'assets/';

  static AssetsImages get images => AssetsImages();
  static AssetsSvgs get svgs => AssetsSvgs();
}

class AssetsImages {
  static const String _path = 'assets/images';
  //
  final String logo = '$_path/logo.png';
}

class AssetsSvgs {
  static const String _path = 'assets';
  //
  final String download = '$_path/download.svg';
  final String eye = '$_path/eye.svg';
  final String history = '$_path/history.svg';
  final String home = '$_path/home.svg';
  final String info = '$_path/info.svg';
  final String like = '$_path/like.svg';
  final String settings = '$_path/settings.svg';
  final String clock = '$_path/clock.svg';
}
