import 'dart:math';

import 'package:flutter/material.dart';

enum FilterOption { Home, Search, Video, Shop, Profile }

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FilterOption selected = FilterOption.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontFamily: 'Cookie', color: Colors.black, fontSize: 40),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          Transform.translate(
            offset: const Offset(0, -3),
            child: Transform.rotate(
              angle: pi / 3,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.details_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      // body:,
      bottomNavigationBar: BottomAppBar(
        elevation: 8,
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
                  selected == FilterOption.Home? Icons.home : Icons.home_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Search;
                  });
                },
                icon:  Icon(
                  selected == FilterOption.Search? Icons.search : Icons.search_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Video;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Video? Icons.movie : Icons.movie_outlined,
                  size: 35,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    selected = FilterOption.Shop;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Shop? Icons.local_mall : Icons.local_mall_outlined,
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
                  selected == FilterOption.Profile? Icons.account_circle : Icons.account_circle_outlined,
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
