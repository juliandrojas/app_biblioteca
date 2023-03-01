// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDBModel welcomeFromJson(String str) =>
    MongoDBModel.fromJson(json.decode(str));

String welcomeToJson(MongoDBModel data) => json.encode(data.toJson());

class MongoDBModel {
  MongoDBModel({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.editorial,
    required this.categoria,
    required this.descripcion,
    required this.prestado_a,
  });

  ObjectId id;
  Object titulo;
  Object autor;
  Object editorial;
  Object categoria;
  Object descripcion;
  Object prestado_a;

  factory MongoDBModel.fromJson(Map<String, dynamic> json) => MongoDBModel(
        id: json["_id"],
        titulo: json["titulo"],
        autor: json["autor"],
        editorial: json["editorial"],
        categoria: json["categoria"],
        descripcion: json["descripcion"],
        prestado_a: json["prestado_a"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "titulo": titulo,
        "autor": autor,
        "editorial": editorial,
        "categoria": categoria,
        "descripcion": descripcion,
        "prestado_a": prestado_a
      };
}

class Id {
  Id({
    required this.oid,
  });

  String oid;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
      };
}
