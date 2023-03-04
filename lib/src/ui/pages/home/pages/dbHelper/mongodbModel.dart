// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.id,
        required this.titulo,
        required this.autor,
        required this.editorial,
        required this.categoria,
        required this.descripcion,
        required this.prestadoA,
    });

    Id id;
    String titulo;
    String autor;
    String editorial;
    String categoria;
    String descripcion;
    String prestadoA;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: Id.fromJson(json["_id"]),
        titulo: json["titulo"],
        autor: json["autor"],
        editorial: json["editorial"],
        categoria: json["categoria"],
        descripcion: json["descripcion"],
        prestadoA: json["prestado_a"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "titulo": titulo,
        "autor": autor,
        "editorial": editorial,
        "categoria": categoria,
        "descripcion": descripcion,
        "prestado_a": prestadoA,
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
