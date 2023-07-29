// To parse this JSON data, do
//
//     final toos = toosFromJson(jsonString);

import 'dart:convert';

List<Toos> toosFromJson(String str) => List<Toos>.from(json.decode(str).map((x) => Toos.fromJson(x)));

String toosToJson(List<Toos> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Toos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Toos({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory Toos.fromJson(Map<String, dynamic> json) => Toos(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
  "userId": userId,
  "id": id,
  "title": title,
  "completed": completed,
  };
}
