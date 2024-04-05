// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:equatable/equatable.dart';

// abstract class LocalizationService {
//   Future<AdressLocale> getAdressLocaleFromCep(String cep);
// }

// class AdressLocale extends Equatable {
//   final String? district;
//   final String? city;
//   final String? state;
//   final String? zipcode;
//   final String? streetName;
//   final String? country;
//   final String? countryCode;

//   const AdressLocale({
//     required this.district,
//     required this.city,
//     required this.state,
//     required this.zipcode,
//     required this.streetName,
//     required this.country,
//     required this.countryCode,
//   });

//   AdressLocale copyWith({
//     String? district,
//     String? city,
//     String? state,
//     String? zipcode,
//     String? streetName,
//     String? country,
//     String? countryCode,
//   }) {
//     return AdressLocale(
//       district: district ?? this.district,
//       city: city ?? this.city,
//       state: state ?? this.state,
//       zipcode: zipcode ?? this.zipcode,
//       streetName: streetName ?? this.streetName,
//       country: country ?? this.country,
//       countryCode: countryCode ?? this.countryCode,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'district': district,
//       'city': city,
//       'state': state,
//       'zipcode': zipcode,
//       'streetName': streetName,
//       'country': country,
//       'countryCode': countryCode,
//     };
//   }

//   factory AdressLocale.fromMap(Map<String, dynamic> map) {
//     return AdressLocale(
//       district: map['district'] as String,
//       city: map['city'] as String,
//       state: map['state'] as String,
//       zipcode: map['zipcode'] as String,
//       streetName: map['streetName'] as String,
//       country: map['country'] as String,
//       countryCode: map['countryCode'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory AdressLocale.fromJson(String source) => AdressLocale.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   bool get stringify => true;

//   @override
//   List<Object?> get props {
//     return [
//       district,
//       city,
//       state,
//       zipcode,
//       streetName,
//       country,
//       countryCode,
//     ];
//   }
// }
