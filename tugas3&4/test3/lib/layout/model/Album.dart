import 'package:flutter/gestures.dart';

class Album {
  final int id;
  final String title;

  const Album({required this.id, required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
      'id': int id,
      'title': String title,
      } =>
        Album(id: id, title: title),
        => throw const FormatException('Failed to load album'),
    };  
  }  
}