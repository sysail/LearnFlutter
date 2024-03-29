import 'package:flutter/material.dart';

class HYCategoryModel {
  String id = '';
  String title = '';
  String color = '';
  Color cColor = Colors.black;

  HYCategoryModel(
      {required this.id,
      required this.title,
      required this.color,
      required this.cColor});

  HYCategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    color = json['color'];

    // 字符转16进制
    final colorInt = int.parse(color, radix: 16);
    // 加透明度
    cColor = Color(colorInt | 0xFF000000);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['color'] = this.color;
    return data;
  }
}
