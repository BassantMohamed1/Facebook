import 'package:facebook/UI/MyColors/my_colors.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String storyPicPath;
  final String userPicPath;

  const Story({required this.storyPicPath ,required this.userPicPath ,super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.25,
      width: size.width * 0.27,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Image.asset(
              storyPicPath,
              fit: BoxFit.cover,
              height: size.height * 0.25,
              width: size.width * 0.27,
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: CircleAvatar(
                backgroundColor: MyColors.blue,
                radius: 23,
                child: CircleAvatar(
                  backgroundImage: AssetImage(userPicPath),
                  radius: 21.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
