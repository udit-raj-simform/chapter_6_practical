// To parse this JSON data, do
//
//     final newsArticle = newsArticleFromJson(jsonString);

import 'dart:convert';

NewsArticle newsArticleFromJson(String str) =>
    NewsArticle.fromJson(json.decode(str));

String newsArticleToJson(NewsArticle data) => json.encode(data.toJson());

class NewsArticle {
  final String id;
  final String title;
  final String image;
  final String desc;
  final String descL;
  final String time;
  final String writer;
  bool favorite;
  bool unfinished;
  final String tags;

  NewsArticle({
    required this.id,
    required this.title,
    required this.image,
    required this.desc,
    required this.descL,
    required this.time,
    required this.writer,
    required this.favorite,
    required this.unfinished,
    required this.tags,
  });

  NewsArticle copyWith({
    String? id,
    String? title,
    String? image,
    String? desc,
    String? descL,
    String? time,
    String? writer,
    bool? favorite,
    bool? unfinished,
    String? tags,
  }) =>
      NewsArticle(
        id: id ?? this.id,
        title: title ?? this.title,
        image: image ?? this.image,
        desc: desc ?? this.desc,
        descL: descL ?? this.descL,
        time: time ?? this.time,
        writer: writer ?? this.writer,
        favorite: favorite ?? this.favorite,
        unfinished: unfinished ?? this.unfinished,
        tags: tags ?? this.tags,
      );

  factory NewsArticle.fromJson(Map<String, dynamic> json) => NewsArticle(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        desc: json["desc"],
        descL: json["desc-l"],
        time: json["time"],
        writer: json["writer"],
        favorite: json["favorite"],
        unfinished: json["unfinished"],
        tags: json["tags"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "desc": desc,
        "desc-l": descL,
        "time": time,
        "writer": writer,
        "favorite": favorite,
        "unfinished": unfinished,
        "tags": tags,
      };
}
