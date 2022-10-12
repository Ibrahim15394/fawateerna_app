// class ClientModel{
//   final String nameArabic;
//   final String nameEnglish;
//   final int phone;
//   final String email;
//   final String address;
//   final int taxRegistration;
//   final String note;
//
//
//   ClientModel({
//     required this.nameArabic,
//     required this.nameEnglish,
//     required this.phone,
//     required this.email,
//     required this.address,
//     required this.taxRegistration,
//     required this.note,
//
//   });
//
//   factory ClientModel.fromJson(Map<String, dynamic> json){
//     return ClientModel(
//       nameArabic: json['nameArabic'],
//       nameEnglish: json['nameEnglish'],
//       phone: json['phone'] ,
//       email: json['email'],
//       address: json['address'],
//       taxRegistration: json['taxRegistration'],
//       note: json['note'],
//     );
//   }
//
// }
import '../../core/util/constance.dart';

class ClientModel {
  int? id;
  String? name, phone, email;

  ClientModel({this.id, this.name, this.phone, this.email});

  toJson() {
    return {
      name: columnName,
      phone: columnPhone,
      email: columnEmail,
    };
  }

  ClientModel.fromJson(Map<dynamic, dynamic> map) {
    id = map[columnId];
    name = map[columnName];
    phone = map[columnPhone];
    email = map[columnEmail];
  }
}
