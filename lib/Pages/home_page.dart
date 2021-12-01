import 'dart:math';

import 'package:flutter/material.dart';
import '../constant/constant.dart';

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
      backgroundColor: white,
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(fontFamily: 'Cookie', color: black, fontSize: 40),
        ),
        backgroundColor: white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_box_outlined,
              color: black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: black,
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
                  color: black,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.red),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: FractionallySizedBox(
                          heightFactor: 0.9,
                          widthFactor: 0.9,
                          child: Container(
                            child: Image.asset('./assets/images/profilepic.png',),
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
          )
        ],
      ),
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
                    selected = FilterOption.Video;
                  });
                },
                icon: Icon(
                  selected == FilterOption.Video
                      ? Icons.movie
                      : Icons.movie_outlined,
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
                  selected == FilterOption.Shop
                      ? Icons.local_mall
                      : Icons.local_mall_outlined,
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
