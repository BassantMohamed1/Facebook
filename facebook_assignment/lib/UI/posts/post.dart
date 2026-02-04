import 'package:flutter/material.dart';

import '../MyColors/my_colors.dart';

class Post extends StatelessWidget {
  final String profilePicPath;
  final String postPicPath;
  final int hours;

  const Post({required this.profilePicPath, required this.postPicPath, required this.hours, super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(profilePicPath),
                          radius: 28,
                        ),
                        Column(
                          spacing: 4,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Route", style: TextStyle(color: MyColors.black, fontWeight: FontWeight.w500, fontSize: 20),),
                            Row(
                              children: [
                                Text("${hours}h.", style: TextStyle(color: MyColors.grey),),
                                Icon(Icons.public, size: 13, color: MyColors.grey,),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.more_horiz_outlined, size: 35,),
                  ],
                ),
              ),
              Expanded(child: Image.asset(postPicPath, fit: BoxFit.cover, width: double.infinity,)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16 ,vertical:  8.0),
                child: Row(
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        ImageIcon(AssetImage("assets/icons/like_icon.png")),
                        ImageIcon(AssetImage("assets/icons/comment_icon.png")),
                        ImageIcon(AssetImage("assets/icons/share_icon.png")),
                      ],
                    ),
                    Spacer(),
                    ImageIcon(AssetImage("assets/icons/bookmark_icon.png")),
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(color: MyColors.grey, thickness: 2),
      ],
    );
  }
}
