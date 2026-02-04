import 'package:facebook/UI/MyColors/my_colors.dart';
import 'package:facebook/UI/posts/post.dart';
import 'package:flutter/material.dart';

import '../stories/story.dart';
import '../stories/first_story.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  static const List<Widget> stories = [
    FirstStory(profilePicPath: "assets/images/profile_pic.jpg",),
    Story(storyPicPath: "assets/images/story_pic1.png", userPicPath: "assets/images/user_pic1.jpg",),
    Story(storyPicPath: "assets/images/story_pic2.png", userPicPath: "assets/images/user_pic2.jpg",),
    Story(storyPicPath: "assets/images/story_pic3.png", userPicPath: "assets/images/user_pic3.png",),
    Story(storyPicPath: "assets/images/story_pic1.png", userPicPath: "assets/images/user_pic1.jpg",),
    Story(storyPicPath: "assets/images/story_pic2.png", userPicPath: "assets/images/user_pic2.jpg",),
    Story(storyPicPath: "assets/images/story_pic3.png", userPicPath: "assets/images/user_pic3.png",),
    Story(storyPicPath: "assets/images/story_pic1.png", userPicPath: "assets/images/user_pic1.jpg",),
    Story(storyPicPath: "assets/images/story_pic2.png", userPicPath: "assets/images/user_pic2.jpg",),
    Story(storyPicPath: "assets/images/story_pic3.png", userPicPath: "assets/images/user_pic3.png",),
  ];

  static const List<Post> posts = [
    Post(profilePicPath: "assets/images/post_profile_pic1.jpg", postPicPath: "assets/images/post_pic1.jpg", hours: 8,),
    Post(profilePicPath: "assets/images/post_profile_pic2.jpg", postPicPath: "assets/images/post_pic2.jpg", hours: 2,),
    Post(profilePicPath: "assets/images/post_profile_pic3.jpg", postPicPath: "assets/images/post_pic3.jpg", hours: 5,),
  ];



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.white,
        foregroundColor: MyColors.black,
        scrolledUnderElevation: 0,
        title: SizedBox(
          width: size.width * 0.4,
          child: Image.asset(
            "assets/images/facebookWord.png",
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          ImageIcon(AssetImage("assets/icons/plus.png"), size: 32),
          SizedBox(width: 8),
          ImageIcon(AssetImage("assets/icons/search.png"), size: 32),
          SizedBox(width: 8),
          ImageIcon(AssetImage("assets/icons/messenger.png"), size: 32),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            DefaultTabController(
              length: 6,
              child: TabBar(
                labelColor: MyColors.blue,
                unselectedLabelColor: MyColors.grey,
                dividerColor: MyColors.grey,
                indicatorColor: MyColors.blue,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/home.png"),
                      size: 100,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/video.png"),
                      size: 100,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/store.png"),
                      size: 100,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/profile.png"),
                      size: 100,
                    ),
                  ),
                  Tab(
                    icon: ImageIcon(
                      AssetImage("assets/icons/notification.png"),
                      size: 100,
                    ),
                  ),
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        "assets/images/profile_pic1.png",
                        height: 36,
                        width: 36,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  TextField(
                    cursorColor: MyColors.blue,
                    decoration: InputDecoration(
                      hintText: "What's in Your Mind?",
                      hintStyle: TextStyle(
                        color: MyColors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 32,
                        child: Image.asset(
                          "assets/images/profile_pic1.png",
                          height: 45,
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      suffixIcon: ImageIcon(
                        AssetImage("assets/icons/pics.png"),
                        color: Color(0xFF0DE571),
                      ),
                      contentPadding: EdgeInsets.all(32),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColors.grey, width: 2),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColors.grey, width: 2),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(16),
                      separatorBuilder: (_, _) => SizedBox(width: 16,),
                      itemCount: stories.length,
                      itemBuilder: (_, index) => stories[index],
                    ),
                  ),
                  Divider(color: MyColors.grey, thickness: 2,),
                  ...posts,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
