import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/initial_pages/splash_screen/splash_screen_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/helper/index.dart';
import '../../../common/routes/app_pages.dart';


class RegisterScreenView extends GetView<SplashScreenController> {
  const RegisterScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 3, left: 28, right: 28),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      child: Image.asset("assets/arrow-back.png"),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFDFDFDF),
                      ),
                    ),
                  ),
                  Image.asset("assets/logo.png"),
                  Container(

                  ),
                ],
              ),

              SizedBox(
                height:45,
              ),

              Text("Sign Up to WeMoney",
                style: GoogleFonts.poppins(
                    color: Color(0xFF1F1F1F),
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),
              ),

              SizedBox(
                height: 29,
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: "Name",
                    prefixIcon: Icon(Icons.account_circle_outlined),
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: "Email",
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              SizedBox(
                width: double.infinity,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
              ),

              SizedBox(
                height: 21,
              ),

              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton
                    (onPressed: (){
                    Get.toNamed(Routes.NAVBAR);
                    },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular((10))
                          ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          color: whiteTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 41,
              ),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: secondaryTextColor,
                    ),
                  ),
                  Text("or continue with"),
                  Expanded(
                    child: Divider(
                      color: secondaryTextColor,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 41,
              ),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                        shadowColor: Colors.black
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/google-icon.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign Up with Google",
                          style: GoogleFonts.poppins(
                              color: primaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    )
                ),
              ),

              SizedBox(
                height: 15,
              ),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                        shadowColor: Colors.black
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/fb-icon.svg"),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Sign Up with Facebook",
                          style: GoogleFonts.poppins(
                              color: primaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    )
                ),
              ),

              SizedBox(
                height: 33,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: GoogleFonts.poppins(
                      color: primaryTextColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13
                    ),
                  ),

                  TextButton(onPressed: () {
                    Get.toNamed(Routes.LOGIN_SCREEN);
                  },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 13
                      ),
                    ),
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }
}