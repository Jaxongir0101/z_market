import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/profilePage/widgets/profile_scrollPage.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
            // Text("Salom"),
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.blue,
                // color: Colors.lightBlue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.blue, BlendMode.modulate),
                    image: AssetImage("assets/images/profile/profileTab_image.png")),
              ),
            ),
            // Text("Salom"),
            //
profileScrollPage(context),
          ],
        ),

    );
  }
}
