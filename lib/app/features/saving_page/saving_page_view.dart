import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_money_getx/common/helper/colors.dart';
import '../../model/Todo.dart';

class SavingPage extends StatelessWidget {
  const SavingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Todo> todos = [
      Todo(
        title: "Laptop ASUS VivoBook",
        category: "Elektronik",
        target: "20.000.000 dari 20.000.000 terkumpul",
      ),
      Todo(
        title: "Iphone 15 Pro Max 1TB",
        category: "Elektronik",
        target: "20.000.000 dari 20.000.000 terkumpul",
      ),
      Todo(
        title: "Laptop ASUS Tuf Gaming",
        category: "Elektronik",
        target: "20.000.000 dari 20.000.000 terkumpul",
      ),
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

                    SizedBox(height: 20,),

                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hello Jonn", style: GoogleFonts.montserrat(
                                fontSize: 19,
                                fontWeight: FontWeight.w600
                            ),),
                            Text("Let's plan ahead", style: GoogleFonts.montserrat(
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
                                           "Add Plan",
                                           style: GoogleFonts.montserrat(
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
                                           style: GoogleFonts.montserrat(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(height: 3,),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter title here",
                                           ),
                                         ),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: Text(
                                           "Category",
                                           style: GoogleFonts.montserrat(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(height: 3,),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter category Here",
                                           ),
                                         ),
                                       ),

                                       Padding(
                                         padding: const EdgeInsets.only(top: 10),
                                         child: Text(
                                           "Target Saving",
                                           style: GoogleFonts.montserrat(
                                             color: Color(0xFF1F1F1F),
                                             fontWeight: FontWeight.w600,
                                             fontSize: 15,
                                           ),
                                         ),
                                       ),

                                       SizedBox(height: 3,),

                                       SizedBox(
                                         width: 305,
                                         height: 54,
                                         child: TextField(
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                                 borderRadius: BorderRadius.circular(10)
                                             ),
                                             labelText: "Enter target here",
                                           ),
                                         ),
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
                                                   "Add Plan",
                                                   style: GoogleFonts.montserrat(
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
                              color: Color(0xFF09ADFC),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5,
                                  // offset: Offset(0, 0.1),
                                )
                              ],
                            ),
                            child: Center(
                              child: Text("+  Add Plan", style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.white
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
                margin: EdgeInsets.only(top: 4),
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    Todo todo = todos[index];
                    return Stack(
                      children: [
                        Container(
                          width: 334,
                          height:113,
                          margin: EdgeInsets.only(left: 18, right: 18, top: 10),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Warna bayangan
                                blurRadius: 15, // Ukuran blur
                                offset: Offset(0, 1), // Posisi bayangan (x, y)
                              ),
                            ],
                          ),// Set a fixed width for the container
                        ),

                        Container(
                          width: 334,
                          height:113,
                          margin: EdgeInsets.only(left: 28, right: 18, top: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2), // Warna bayangan
                                blurRadius: 8, // Ukuran blur
                                offset: Offset(0, 1), // Posisi bayangan (x, y)
                              ),
                            ],
                          ),// Set a fixed width for the container
                          child: Padding(
                            padding: const EdgeInsets.only(left: 14, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  todo.title,
                                  style: GoogleFonts.montserrat(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: primaryTextColor,
                                ),),
                                SizedBox(height: 2,),
                                Row(
                                  children: [
                                    Text(
                                      todo.category,
                                      style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:primaryTextColor,
                                    ),),
                                  ],
                                ),

                                SizedBox(height: 34,),

                                Stack(
                                  children: [
                                    Container(
                                      width: 284,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: Color(0xffD9D9D9),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                    Container(
                                      width: 60,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  todo.target,
                                  style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: primaryTextColor,
                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
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
