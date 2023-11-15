import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SvgPicture.asset("assets/atas.svg", width: MediaQuery.of(context).size.width,),
          Padding(
            padding: const EdgeInsets.only(top: 84.22, left: 24, right: 24),
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
                          child: SvgPicture.asset("assets/arrow-left-line.svg")
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 35),
                      child: Text(
                        "Edit Profile",
                        style: GoogleFonts.poppins(
                          color: Color(0xFFF8F8F8),
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                    ),

                    Container(
                    ),
                  ],
                ),

                Column(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 58.78),
                            child: Container(
                              width: 149,
                              height: 149,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(34),
                                image: DecorationImage(
                                    image: AssetImage("assets/profile-edit.png"),
                                    fit: BoxFit.fill
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 120,
                          child: InkWell( onTap: () {

                          },
                            child: Container(
                              width: 43,
                              height: 43,
                              child: SvgPicture.asset("assets/edit.svg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 44,
                        ),

                        SizedBox(
                          width: double.infinity,
                          height: 54,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              labelText: "Full Name",
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
                              labelText: "E-Mail",
                              prefixIcon: Icon(Icons.email_outlined),
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
                              labelText: "Phone Number",
                              prefixIcon: Icon(Icons.phone),
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
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                            style: TextStyle(
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 37,
                        ),

                        Center(
                          child: SizedBox(
                            width: 210,
                            height: 45,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF09ADFC),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10))),
                                child: Text(
                                  "Edit Profile",
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: SvgPicture.asset("assets/bawah.svg",
              width: MediaQuery.of(context).size.width,
            ),
          )
        ],
      ),
    );
  }
}
