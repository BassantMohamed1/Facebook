import 'package:facebook/UI/MyColors/my_colors.dart';
import 'package:flutter/material.dart';

class FirstStory extends StatelessWidget {
  final String profilePicPath;

  const FirstStory({required this.profilePicPath, super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Image.asset(profilePicPath, fit: BoxFit.cover),
                ),
                Expanded(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(color: MyColors.white),
                      Text(
                        "Create a\nStory",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: size.height * 0.25 * 0.53),
                CircleAvatar(
                  backgroundColor: MyColors.white,
                  radius: 16,
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_circle_sharp,
                      size: 30,
                      color: MyColors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
