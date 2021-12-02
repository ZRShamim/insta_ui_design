import 'dart:math';

import 'package:flutter/material.dart';
import 'package:insta_ui_design/constant/constant.dart';

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Container(
            height: 40,
            child: Image.asset(
              './assets/images/profilepic.png',
            ),
            decoration: const BoxDecoration(
              color: Color(0xFF229592),
              shape: BoxShape.circle,
            ),
          ),
          title: const Text('ziaurrahman'),
          subtitle: const Text('ZRShamim'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_outlined,
              color: black,
            ),
          ),
        ),
        SizedBox(
            height: 250,
            width: double.infinity,
            child: Image.network(
              'https://pbs.twimg.com/profile_images/1247482752351588352/EgHoUNqQ.jpg',
              fit: BoxFit.contain,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      size: 28,
                      color: red,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mode_comment_outlined,
                    size: 28,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -4),
                  child: Transform.rotate(
                    angle: pi / 3,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.details_outlined,
                        size: 28,
                        color: black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_outlined,
                size: 28,
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text('4 likes'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text('ziaurrahman'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              Container(
                width: 45,
                child: Image.asset(
                  './assets/images/profilepic.png',
                ),
                decoration: const BoxDecoration(
                  color: Color(0xFF229592),
                  shape: BoxShape.circle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 30,
                  width: 210,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'Add a comment...'),
                  ),
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: red,
                )
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                // alignment: Alignment.centerRight,
                onPressed: () {},
                icon: const Icon(
                  Icons.pan_tool,
                  color: yellow,
                  size: 20,
                ),
              ),
              IconButton(
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerLeft,
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_outline_outlined,
                  color: grey,
                  // size: 20,
                ),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            '7 hours ago',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
