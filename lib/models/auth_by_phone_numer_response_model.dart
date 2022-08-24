// To parse this JSON data, do
//
//     final authPhoneNumResponseModel = authPhoneNumResponseModelFromMap(jsonString);

import 'dart:convert';

class AuthPhoneNumResponseModel {
    AuthPhoneNumResponseModel({
        this.apiToken,
        this.user,
    });

    final String? apiToken;
    final User? user;

    factory AuthPhoneNumResponseModel.fromJson(String str) => AuthPhoneNumResponseModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AuthPhoneNumResponseModel.fromMap(Map<String, dynamic> json) => AuthPhoneNumResponseModel(
        apiToken: json["api_token"],
        user: User.fromMap(json["user"]),
    );

    Map<String, dynamic> toMap() => {
        "api_token": apiToken,
        "user": user!.toMap(),
    };
}

class User {
    User({
        this.id,
        this.phone,
        this.status,
        this.avatar,
        this.fio,
        this.rating,
        this.personalAccount,
        this.limit,
        this.period,
        this.balance,
        this.zcoin,
    });

    final int? id;
    final String? phone;
    final int? status;
    final dynamic avatar;
    final String? fio;
    final int? rating;
    final int? personalAccount;
    final int? limit;
    final int? period;
    final int? balance;
    final int? zcoin;

    factory User.fromJson(String str) => User.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        phone: json["phone"],
        status: json["status"],
        avatar: json["avatar"],
        fio: json["fio"],
        rating: json["rating"],
        personalAccount: json["personal_account"],
        limit: json["limit"],
        period: json["period"],
        balance: json["balance"],
        zcoin: json["zcoin"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "phone": phone,
        "status": status,
        "avatar": avatar,
        "fio": fio,
        "rating": rating,
        "personal_account": personalAccount,
        "limit": limit,
        "period": period,
        "balance": balance,
        "zcoin": zcoin,
    };
}
