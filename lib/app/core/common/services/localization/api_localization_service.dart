// import 'package:geek_us/app/core/common/constants/app_api_path.dart';
// import 'package:geek_us/app/core/common/errors/exceptions.dart';
// import 'package:geek_us/app/core/common/services/localization/localization_service.dart';
// import 'package:geek_us/app/core/common/services/requests/request_service.dart';

// class ApiLocalizationService extends LocalizationService {
//   final RequestService requestService;
//   ApiLocalizationService({required this.requestService});

//   @override
//   Future<AdressLocale> getAdressLocaleFromCep(String cep) async {
//     var response = await requestService.get(
//       '${AppApiPath.localization}?cep=$cep',
//     );

//     if (response.statusCode > 199 && response.statusCode < 300) {
//       return AdressLocale.fromMap(response.data);
//     }

//     throw ServerException(message: 'Erro ao buscar o CEP');
//   }
// }
