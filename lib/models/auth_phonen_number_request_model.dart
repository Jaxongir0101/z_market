import 'dart:convert';

class AuthPhoneNumRequestModel {
    AuthPhoneNumRequestModel({
        this.phone,
    });

    final int? phone;

    factory AuthPhoneNumRequestModel.fromJson(String str) => AuthPhoneNumRequestModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthPhoneNumRequestModel.fromMap(Map<String, dynamic> json) => AuthPhoneNumRequestModel(
        phone: json["phone"],
    );

    Map<String, dynamic> toMap() => {
        "phone": phone,
    };
}
