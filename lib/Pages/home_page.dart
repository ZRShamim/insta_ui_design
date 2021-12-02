import 'dart:math';

import 'package:flutter/material.dart';
import 'package:insta_ui_design/widgets/post_grid.dart';
import 'package:insta_ui_design/widgets/story_widget.dart';
import '../constant/constant.dart';

enum FilterOption { Home, Search, Add, Favorite, Profile }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FilterOption selected = FilterOption.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.photo_camera_outlined,
            color: black,
            size: 30,
          ),
        ),
        title: const Text('Instagram',
            style: TextStyle(fontFamily: 'Cookie', color: black, fontSize: 40)),
        backgroundColor: white,
        elevation: 1,
        actions: [
          Transform.translate(
            offset: const Offset(0, -3),
            child: Transform.rotate(
              angle: pi / 3,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.details_outlined,
                  color: black,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          StorySection(),
          const Divider(),
          PostGrid(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Home;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Home
                      ? Icons.home
                      : Icons.home_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Search;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Search
                      ? Icons.search
                      : Icons.search_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Add;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Add
                      ? Icons.add_box
                      : Icons.add_box_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Favorite;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Favorite
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Profile;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Profile
                      ? Icons.account_circle
                      : Icons.account_circle_outlined,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




