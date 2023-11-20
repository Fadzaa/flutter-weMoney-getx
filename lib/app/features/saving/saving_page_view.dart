import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/common/helper/colors.dart';

import '../../model/DataItem.dart';
import '../../model/Todo.dart';

class SavingPage extends StatelessWidget {
  const SavingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Todo> todos = [
      Todo(
        title: "Meeting 1",
        time: "02.04 PM - 02.20 PM",
        note: "Discuss project updates",
      ),
      Todo(
        title: "Meeting 2",
        time: "03.30 PM - 04.00 PM",
        note: "Planning for next sprint",
      ),
      Todo(
        title: "Task 3",
        time: "05.00 PM - 05.30 PM",
        note: "Review code changes",
      ),
      Todo(
        title: "Task 4",
        time: "05.00 PM - 05.30 PM",
        note: "Review code changes",
      ),
      Todo(
        title: "Task 5",
        time: "05.00 PM - 05.30 PM",
        note: "Review code changes",
      ),
    ];

    List<DateItem> dateItems = [
      DateItem(month: "Nov", day: "25", dayOfWeek: "WED"),
      DateItem(month: "Nov", day: "26", dayOfWeek: "THU"),
      DateItem(month: "Nov", day: "27", dayOfWeek: "FRI"),
      DateItem(month: "Nov", day: "28", dayOfWeek: "SAT"),
      DateItem(month: "Nov", day: "29", dayOfWeek: "SUN"),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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

                        InkWell(
                          onTap: (){
                            Get.dialog(
                              Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                               child: Container(
                                 height: 515,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 20, ),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [

                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: IconButton(onPressed: (){
                                           Get.back();
                                         }, icon: Icon(Icons.close)),
                                       ),

                                       Center(
                                         child: Text(
                                           "Add Task",
                                           style: GoogleFonts.poppins(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 19,
                                           ),
                                         ),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 24),
                                         child: Text(
                                           "Title",
                                           style: GoogleFonts.poppins(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter Title",
                                           ),
                                         ),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: Text(
                                           "Note",
                                           style: GoogleFonts.poppins(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter Note Here",
                                           ),
                                         ),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: Text(
                                           "Date",
                                           style: GoogleFonts.poppins(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter Date",
                                           ),
                                         ),
                                       ),


                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             Text(
                                               "Start Time",
                                               style: GoogleFonts.poppins(
                                                 color: Color(0xFF1F1F1F),
                                                 fontWeight: FontWeight.w600,
                                                 fontSize: 15,
                                               ),
                                             ),

                                             Text(
                                               "End Time",
                                               style: GoogleFonts.poppins(
                                                 color: Color(0xFF1F1F1F),
                                                 fontWeight: FontWeight.w600,
                                                 fontSize: 15,
                                               ),
                                             ),
                                             Container(

                                             ),
                                           ],
                                         ),
                                       ),


                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           SizedBox(
                                             width: 115,
                                             height: 40,
                                             child: TextField(
                                               decoration: InputDecoration(
                                                 border: OutlineInputBorder(
                                                     borderRadius: BorderRadius.circular(10)
                                                 ),
                                                 labelText: "enter time",
                                                 suffixIcon: Icon(Icons.schedule),
                                               ),
                                             ),
                                           ),

                                           SizedBox(
                                             width: 115,
                                             height: 40,
                                             child: TextField(
                                               decoration: InputDecoration(
                                                 border: OutlineInputBorder(
                                                     borderRadius: BorderRadius.circular(10)
                                                 ),
                                                 labelText: "enter time",
                                                 suffixIcon: Icon(Icons.schedule),
                                               ),
                                             ),
                                           ),
                                           Container(

                                           )
                                         ],
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 20),
                                         child: Center(
                                           child: SizedBox(
                                             width: 171,
                                             height: 45,
                                             child: ElevatedButton(
                                                 onPressed: () {
                                                   Get.back();
                                                 },
                                                 style: ElevatedButton.styleFrom(
                                                     backgroundColor: Color(0xFF09ADFC),
                                                     shape: RoundedRectangleBorder(
                                                         borderRadius: BorderRadius.circular(10))),
                                                 child: Text(
                                                   "Add Task",
                                                   style: GoogleFonts.poppins(
                                                     color: Colors.white,
                                                     fontWeight: FontWeight.w600,
                                                     fontSize: 14,
                                                   ),
                                                 )),
                                           ),
                                         ),
                                       ),


                                     ],
                                   ),
                                 ),
                               ),
                              ),
                            );
                          },
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
                    DateItem dateItem = dateItems[index];
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
                          Text(
                            dateItem.month,
                            style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: index == 0 ? Colors.white : primaryTextColor,
                          ),),
                          SizedBox(height: 8,),
                          Text(
                            dateItem.day,
                            style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: index == 0 ? Colors.white : primaryTextColor,
                          ),),
                          SizedBox(height: 6,),
                          Text(
                            dateItem.dayOfWeek,
                            style: GoogleFonts.poppins(
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
                height: 450,
                child: ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    Todo todo = todos[index];
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
                            Text(
                              todo.title,
                              style: GoogleFonts.poppins(
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
                                Text(
                                  todo.time,
                                  style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: index == 0 ? Colors.white: primaryTextColor,
                                ),),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Text(
                              todo.note,
                              style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
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
      ),
    );
  }
}
