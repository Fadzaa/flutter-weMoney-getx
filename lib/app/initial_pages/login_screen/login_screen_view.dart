import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:we_money_getx/app/initial_pages/splash_screen/splash_screen_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenView extends GetView<SplashScreenController> {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 34, left: 28, right: 28),
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

                Image.asset("assets/logo_app.png"),

                Container(

                ),
              ],
            ),

            SizedBox(
              height: 45,
            ),

            Text(
              "Sign In",
              style: GoogleFonts.poppins(
                color: Color(0xFF1F1F1F),
                fontWeight: FontWeight.w600,
                fontSize: 22,
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
                style: TextStyle(
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
              height: 11,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {},
                    child: Text("Forget Password?",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF09ADFC),
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),)),
              ],
            ),

            SizedBox(
              height: 21,
            ),

            Center(
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF09ADFC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ),

            SizedBox(
              height: 41,
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 93,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF989898),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or continue with",
                    style: GoogleFonts.poppins(
                      color: Color(0xFF989898),
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    width: 93,
                    height: 1,
                    decoration: BoxDecoration(
                      color: Color(0xFF989898),
                    ),
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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5, // Menentukan elevasi bayangan
                    shadowColor: Colors.black, // Menentukan warna bayangan
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset("assets/google-icon.svg"),
                      Text(
                        "Sign In with Google",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Container(),
                    ],
                  ),
                )

            ),

            SizedBox(
              height: 15,
            ),

            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5, // Menentukan elevasi bayangan
                  shadowColor: Colors.grey, // Menentukan warna bayangan
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/fb-icon.svg"),
                    Text(
                      "Sign In with Google",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Container(),
                  ],
                ),

              ),
            ),

            SizedBox(
              height: 33,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: GoogleFonts.poppins(
                    color: Color(0xFF1F1F1F),
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),

                TextButton(onPressed: () {},
                    child: Text("Sign In",
                      style: GoogleFonts.poppins(
                        color: Color(0xFF09ADFC),
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}