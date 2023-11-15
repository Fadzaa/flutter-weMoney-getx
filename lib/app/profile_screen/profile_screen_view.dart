import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset("assets/Rectangle.png"),
              ),

              Column(
                children: [
                  SizedBox(height: 200,),
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset("assets/profilepict.png"),
                  ),

                  SizedBox(height: 20),
                  Text(
                    "Alice Grace",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "youremail@gmail.com | 0812345678910",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 305,
                    height: 210,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset("assets/edit.png"),
                            SizedBox(width: 10),
                            Text(
                              "Edit Profile",
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset("assets/notifications.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Notifications", style: GoogleFonts.poppins()),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset("assets/security.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Security", style: GoogleFonts.poppins()),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset("assets/contact.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Contact Us", style: GoogleFonts.poppins()),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset("assets/privacy.png"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Privacy Policy", style: GoogleFonts.poppins()),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),

            ],
          ),


          
          Expanded(child: Container()),

          Container(
              width: 305,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
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
                  style: GoogleFonts.poppins(
                    color: Colors.red,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
