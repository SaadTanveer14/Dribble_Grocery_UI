import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CategoryDetail extends StatefulWidget {
  const CategoryDetail({super.key});

  @override
  State<CategoryDetail> createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  final controller = PageController(viewportFraction: 0.5, keepPage: true);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                SizedBox(height: Get.height*0.05,),
                Row(
                  children: [
                    GestureDetector
                    (
                      onTap: () => Get.back(),

                      child: Icon(Icons.arrow_back_rounded)),
                        Expanded(
                        child: Text(
                          "Product Details",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),                  
                    ],
                ),

                Center(
                  child: Container(
                    height: Get.height * 0.4,
                    width: Get.width * 0.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/broccoli.jpg")
                
                      ),
                    ),
                    // color: Colors.red,
                  ),
                ),

                Center(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 2,
                    effect: ExpandingDotsEffect(
                      dotHeight: 13,
                      dotWidth: 13,
                
                      expansionFactor: 2,
                      activeDotColor: Colors.orange,
                      dotColor: Color.fromARGB(83, 158, 158, 158)
                      // type: WormType.thin,
                      // strokeWidth: 5,
                    ),
                  ),
                ),


                Row(children: [
                  Text(
                    "Broccoli",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.favorite_border_outlined)
                ],),
                Text("Vegetables",),


                SizedBox(
                  height: Get.height*0.03,
                ),


                Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "\$" + "1.50",
                        style: GoogleFonts.poppins(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                        ),
                      ),
                    Text(
                        " / kg",
                        style: GoogleFonts.poppins(
                          color: Color.fromARGB(157, 158, 158, 158),
                          fontWeight: FontWeight.w400,
                          fontSize: 15
                        ),
                      ),

                      RichText(
                        softWrap: false,
                        text: TextSpan(
                          text: "   ",
                          children: [
                            TextSpan(
                              text: '\$2.50',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 0, 0, 0),
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w500,
                                fontSize: 17
                              ),
                            ),

                            TextSpan(
                              text: '/ kg',
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(157, 158, 158, 158),
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w500,
                                fontSize: 15
                              ),
                            ),

                          ],
                        ),

                        textAlign: TextAlign.start,
                      ),
                      
                      Spacer(),

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color.fromARGB(255, 5, 189, 100),
                        ),
                        
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(

                            children:[
                            Icon(Icons.remove,
                            color: Colors.white,),

                            SizedBox(width: 10,),

                            Text(
                              "1",
                              style: GoogleFonts.poppins(
                                color:Colors.white
                              )
                            ),


                            SizedBox(width: 10,),

                            

                            Icon(
                              Icons.add_rounded,
                              color: Colors.white,
                              ),

                          ]),
                        ),
                      ),
                  ],

                  
                ),

                SizedBox(
                  height: Get.height*0.03,
                ),


                Text(
                  "About the product",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: Get.height*0.02,),
                Container(
                  // width: Get.width*0.8,
                  height: Get.height*0.12,
                  child: SingleChildScrollView(
                    child: Text("You know that broccoli is good for you. It's probably one of the top foods that come to mind when you think about healthy eating. But you may not be aware of just how beneficial this cruciferous vegetable is for your health, or the various (and delicious) ways you can incorporate it into meals, snacks, and yes, even drinks. Here's a summary of this superfood's perks, and easy ways to eat more of it every week. ",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                    ),
                      maxLines: 5,
                            overflow: TextOverflow.fade,
                            
                      //  softWrap: false,
                    ),
                  ),
                ),

                SizedBox(height: Get.height*0.02,),


                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 5, 189, 100),

                  ),
                  width: double.infinity,
                  height: Get.height*0.07,
                  
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Add to cart",textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                        
                      ),
                      
                    ),
                  ),
                )

              ],
            ),
          ),
          Positioned(
            top: Get.height*0.15,

            child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(15)),
              color: Colors.orange,
            ),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,5),
              child: Text("-40%",style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
            )
            ))
        ],
      )
    );
  }
}