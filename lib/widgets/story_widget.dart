import 'package:flutter/material.dart';
import 'package:insta_ui_design/constant/constant.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 10, right: 10),
            child: Container(
              width: 70,
              height: 70,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset(
                      './assets/images/profilepic.png',
                    ),
                    decoration: const BoxDecoration(
                      color: Color(0xFF229592),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.80, 0.50),
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: white, width: 1),
                          borderRadius: BorderRadius.circular(50)),
                      child: const Icon(
                        Icons.add,
                        size: 13,
                        color: white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          OthersStory(),
        ],
      ),
    );
  }
}

class OthersStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: 65,
                decoration: BoxDecoration(
                  color: white,
                  border: Border.all(width: 2, color: Colors.red),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: FractionallySizedBox(
                    heightFactor: 0.9,
                    widthFactor: 0.9,
                    child: Container(
                      child: Image.asset(
                        './assets/images/profilepic.png',
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF229592),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
