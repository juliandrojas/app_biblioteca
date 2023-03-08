// To parse this JSON data, do
//
//     final mongoDbModel = mongoDbModelFromJson(jsonString);

import 'dart:convert';

import 'package:mongo_dart/mongo_dart.dart';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.id,
    required this.titulo,
    required this.autor,
    required this.editorial,
    required this.categoria,
    required this.descripcion,
    required this.poseedor,
  });

  ObjectId id;
  String titulo;
  String autor;
  String editorial;
  String categoria;
  String descripcion;
  String poseedor;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        id: json["_id"],
        titulo: json["titulo"],
        autor: json["autor"],
        editorial: json["editorial"],
        categoria: json["categoria"],
        descripcion: json["descripcion"],
        poseedor: json["poseedor"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "titulo": titulo,
        "autor": autor,
        "editorial": editorial,
        "categoria": categoria,
        "descripcion": descripcion,
        "poseedor": poseedor,
      };
}
