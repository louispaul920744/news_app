import 'package:flutter/material.dart';

class NewsModel {
  int? createdAt;
  String? title;
  Image? image;
  String? id;

  NewsModel({this.createdAt, this.title, this.image, this.id});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      image: json['image'],
      title: json['title'],
      createdAt: json['createdAt'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['createdAt'] = createdAt;
    data['title'] = title;
    if (image != null) {
      data['image'] = image;
    }
    data['id'] = id;
    return data;
  }
}
