

import 'dart:convert';

List<ListDataModel> listDataModelFromJson(String str) => List<ListDataModel>.from(json.decode(str).map((x) => ListDataModel.fromJson(x)));

String listDataModelToJson(List<ListDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListDataModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  ListDataModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory ListDataModel.fromJson(Map<String, dynamic> json) => ListDataModel(
    albumId: json["albumId"]??0,
    id: json["id"]??0,
    title: json["title"]??"",
    url: json["url"]??"",
    thumbnailUrl: json["thumbnailUrl"]??"",
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
