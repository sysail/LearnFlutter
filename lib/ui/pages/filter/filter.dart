import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/filter/filter_content.dart';

class HYFilterScreen extends StatelessWidget {
  static const String routeName = "/filter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食过滤"),
      ),
      body: HYFilterContent(),
    );
  }
}
