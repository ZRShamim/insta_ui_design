import 'package:flutter/material.dart';
import 'package:insta_ui_design/widgets/post_widget.dart';

class PostGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 0.88,
        ),
        itemBuilder: (ctx, i) {
          return Post();
        });
  }
}