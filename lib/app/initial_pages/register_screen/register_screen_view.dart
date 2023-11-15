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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 24),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(
                height:34,
              ),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(35, 35),
                        backgroundColor:Color(0XFFDFDFDF)
                    ),
                    child: null,
                  ),

                  SizedBox(
                    width: 93,
                  ),

                  Image.asset("assets/logo.png"),
                ],
              ),

              SizedBox(
                height: 38,
              ),

              Text("Sign Up to WeMoney",
                style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.w600
                ),
              ),

              SizedBox(
                height: 29,
              ),

              Container(
                width: 305,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(horizontal: 22),
                      prefixIcon: SvgPicture.asset('assets/person-icon.svg'),
                      hintText: "Name",
                      hintStyle: GoogleFonts.poppins(
                        color: secondaryTextColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Container(
                width: 305,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset('assets/email-icon.svg'),
                      hintText: "Email",
                      hintStyle: GoogleFonts.poppins(
                        color: secondaryTextColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Container(
                width: 305,
                height: 54,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: SvgPicture.asset('assets/lock-icon.svg'),
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins(
                        color: secondaryTextColor,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                ),
              ),

              SizedBox(
                height: 11,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forget Password?",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: primaryColor
                      ),),
                  ],
                ),
              ),

              SizedBox(
                height: 21,
              ),

              ElevatedButton(onPressed: (){
                Get.toNamed(Routes.HOME_PAGE);

              },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(305, 45),
                      backgroundColor: primaryColor
                  ),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.poppins(
                        color: whiteTextColor
                    ),
                  )
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

              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(302, 53),
                      backgroundColor: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/google-icon.svg",
                          width: 29,
                          height: 29
                      ),

                      SizedBox(
                        width: 16,
                      ),

                      Text(
                        "Sign In with Google",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(
                height: 15,
              ),

              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(302, 53),
                      backgroundColor: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/fb-icon.svg",
                          width: 29,
                          height: 29
                      ),

                      SizedBox(
                        width: 16,
                      ),

                      Text(
                        "Sign In with Facebook",
                        style: GoogleFonts.poppins(
                            color: primaryTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ],
                  )
              ),

              SizedBox(
                height: 33,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? Sign In",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10
                    ),
                  ),

                  SizedBox(width: 5,),

                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.LOGIN_SCREEN);

                    },
                    child: Text("Sign In",
                      style: GoogleFonts.poppins(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 10
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