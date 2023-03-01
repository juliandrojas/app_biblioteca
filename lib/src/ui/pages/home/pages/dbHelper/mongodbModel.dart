// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

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
  });

  Id id;
  Object titulo;
  Object autor;
  Object editorial;
  Object categoria;
  Object descripcion;

  factory MongoDBModel.fromJson(Map<String, dynamic> json) => MongoDBModel(
        id: Id.fromJson(json["_id"]),
        titulo: json["titulo"],
        autor: json["autor"],
        editorial: json["editorial"],
        categoria: json["categoria"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "titulo": titulo,
        "autor": autor,
        "editorial": editorial,
        "categoria": categoria,
        "descripcion": descripcion,
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
