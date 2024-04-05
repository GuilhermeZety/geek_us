import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Future init() async {
    await dotenv.load(fileName: '.env');

    isWhiteLabel = dotenv.env['isWhiteLabel'] == 'true';
    sharedKey = dotenv.env['SHARED_KEY']!;

    firstApresentationTitle = dotenv.env['first_apresentation_title']!;
    firstApresentationText = dotenv.env['first_apresentation_text']!;
    secondApresentationTitle = dotenv.env['second_apresentation_title']!;
    secondApresentationText = dotenv.env['second_apresentation_text']!;

    primaryColor = dotenv.env['primaryColor']!;
    gradientColor1 = dotenv.env['gradientColor1']!;
    gradientColor2 = dotenv.env['gradientColor2']!;
  }

  static late bool isWhiteLabel;
  static late String sharedKey;

  static late String firstApresentationTitle;
  static late String firstApresentationText;
  static late String secondApresentationTitle;
  static late String secondApresentationText;

  static late String primaryColor;
  static late String gradientColor1;
  static late String gradientColor2;

  static String get(String name) => dotenv.env[name]!;
  static String get splashPath => 'assets/images/splash/${dotenv.env['appPath']!}_splash.png';
}
