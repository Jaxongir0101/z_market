import 'dart:convert';

class LogRenderedMessageModel {
  LogRenderedMessageModel({
    required this.method,
    required this.status,
    this.duration,
    required this.url,
    required this.request,
    this.response,
    this.responseCode,
    this.error,
  });

  final String method;
  final String status;
  final int? responseCode;
  final double? duration;
  final String url;
  final String request;
  final String? response;
  final String? error;

  factory LogRenderedMessageModel.fromJson(String str) =>
      LogRenderedMessageModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogRenderedMessageModel.fromMap(Map<String, dynamic> json) =>
      LogRenderedMessageModel(
        status: json["status"],
        method: json["method"],
        duration: json["duration"]?.toDouble(),
        url: json["url"],
        request: json["request"],
        response: json["response"],
        responseCode: json["responseCode"],
        error: json["error"],
      );

  Map<String, dynamic> toMap() => {
        "method": method,
        "status": status,
        "duration": duration,
        "url": url,
        "request": request,
        "response": response,
        "responseCode": responseCode,
        "error": error,
      };
}