import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/common/helper/colors.dart';

class SavingPage extends StatelessWidget {
  const SavingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        // margin: EdgeInsets.only(left: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 11),
                        child: CircleAvatar(
                          child: Column(
                            children: [
                              Image.asset('assets/Avatar2.png'),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 11,),

                      Container(
                        margin: EdgeInsets.only(top: 20,),
                        child: SvgPicture.asset('assets/clear.svg'),
                      ),
                    ],
                  ),

                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("November 12, 2023", style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),),
                          Text("Today", style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),

                      Spacer(),

                      GestureDetector(
                        child: Container(
                          width: 114,
                          height: 46,
                          margin: EdgeInsets.only(right: 18),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                // offset: Offset(0, 0.1),
                              )
                            ],
                          ),
                          child: Center(
                            child: Text("+  Add Task", style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              height: 115, // Set a fixed height for the container
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 103,
                    height:110,
                    margin: EdgeInsets.only(left: 18, top: 3, bottom: 3),
                    padding: EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        color: index == 0 ? primaryColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Warna bayangan
                          blurRadius: 3, // Ukuran blur
                          offset: Offset(0, 1), // Posisi bayangan (x, y)
                        ),
                      ],
                    ),// Set a fixed width for the container
                    child: Column(
                      children: [
                        Text("Nov", style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: index == 0 ? Colors.white : primaryTextColor,
                        ),),
                        SizedBox(height: 8,),
                        Text("25", style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: index == 0 ? Colors.white : primaryTextColor,
                        ),),
                        SizedBox(height: 6,),
                        Text("WED", style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: index == 0 ? Colors.white : primaryTextColor,
                        ),),
                      ],
                    ),
                  );
                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 4),
              height: 495,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    width: 334,
                    height:113,
                    margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                    decoration: BoxDecoration(
                      color: index == 0 ? primaryColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2), // Warna bayangan
                          blurRadius: 7, // Ukuran blur
                          offset: Offset(0, 1), // Posisi bayangan (x, y)
                        ),
                      ],
                    ),// Set a fixed width for the container
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Title", style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: index == 0 ? Colors.white: primaryTextColor,
                          ),),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: Icon(Icons.schedule,
                                    color: index == 0 ? Colors.white: primaryTextColor,),
                              ),
                              Text("02.04 PM - 02.20 PM", style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: index == 0 ? Colors.white: primaryTextColor,
                              ),),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Text("note1", style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: index == 0 ? Colors.white: primaryTextColor,
                          ),),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
