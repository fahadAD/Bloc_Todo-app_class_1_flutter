// To parse this JSON data, do
//
//     final fahadJson = fahadJsonFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

FahadJson fahadJsonFromJson(String str) => FahadJson.fromJson(json.decode(str));

String fahadJsonToJson(FahadJson data) => json.encode(data.toJson());

class FahadJson extends Equatable{
  FahadJson({
    this.name,
  });

  String? name;

  factory FahadJson.fromJson(Map<String, dynamic> json) => FahadJson(
    name: json["name"],
  );




  Map<String, dynamic> toJson() => {
    "name": name,
  };

  @override
  // TODO: implement props
  List<Object?> get props =>  [name];
}
