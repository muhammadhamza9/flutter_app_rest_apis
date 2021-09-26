// To parse this JSON data, do
//
//     final modelPost = modelPostFromJson(jsonString);

import 'dart:convert';

List<ModelPost> modelPostFromJson(String str) {
  return List<ModelPost>.from(
      json.decode(str).map((x) => ModelPost.fromJson(x)));
}

String modelPostToJson(List<ModelPost> data) {
  return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}

class ModelPost {
  int userId;
  int id;
  String title;
  String body;

  ModelPost({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory ModelPost.fromJson(Map<String, dynamic> json) {
    return ModelPost(
      userId: json["userId"],
      id: json["id"],
      title: json["title"],
      body: json["body"],
    );
  }

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
