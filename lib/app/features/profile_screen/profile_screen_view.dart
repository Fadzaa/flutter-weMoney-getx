import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/common/helper/colors.dart';
import 'package:we_money_getx/common/helper/index.dart';
import 'package:we_money_getx/common/routes/app_pages.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: [
        Container(
          child: Image.asset("assets/Rectangle.png"),
        ),
        Column(
          children: [
            SizedBox(
              height: 160,
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/profile-edit.png",
                width: 120,
                height: 120,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Alice Grace", style: tsProfileName),
            Text(
              "youremail@gmail.com | 0812345678910",
              style: tsHeading),
            SizedBox(height: 25),
            Container(
              width: 305,
              height: 275,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.edit),
                      SizedBox(width: 10),
                      TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.EDIT_PROFILE);
                          },
                          child: Text(
                            "Edit Profile",
                            style: tsProfile
                          )),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.notifications),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Notifications",
                          style: tsProfile
                      ),
                      Spacer(),
                      Switch(
                        value: true,
                        onChanged: (bool value) {},
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.security),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Security",
                          style: tsProfile
                        ),)
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.chat),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("Contact Us",
                            style: tsProfile
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Icon(Icons.lock),
                      SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.PRIVACY_POLICY);
                        },
                        child: Text("Privacy Policy",
                            style: tsProfile
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: 305,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    showLogoutConfirmationDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: Colors.red, // Border color
                      ),
                    ),
                  ),
                  child: Text(
                    "LOG OUT",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ])
    ]));
  }

  void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout Confirmation",
          style: tsHeadingPP,),
          content: Text("Are you sure you want to log out?",
          style: tsTextPP,),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("CANCEL",),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN_SCREEN);
              },
              style: ElevatedButton.styleFrom(
                primary: errorColor, // Button background color
              ),
              child: Text("LOG OUT"),
            ),
          ],
        );
      },
    );
  }
}
