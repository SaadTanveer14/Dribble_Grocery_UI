import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prac_ui1/categoryDetail.dart';

List<String> categoriesimg = ["assets/fruits.jpg","assets/veg.jpg","assets/meat.jpg","assets/juice.jpg"];
List<String> categoriestext = ["Fruits","Vegetables","Meat","Juices"];

List<String> fruitsimg = ["assets/apples.jpg","assets/oranges.jpg"];
List<String> fruitstext = ["Apples","Oranges"];

List<String> fruitprice = ["1.80","3.00"];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding:  EdgeInsets.fromLTRB(0,50,0,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(30,0,30,0),
              child: Column(
                children: [
            
                     
              Row( children:  [
                Icon(
                  Icons.place_outlined,
                  color: Color.fromARGB(255, 255, 170, 59)
                  
                  ),
                  Text(
                    " Samad Vurgun Street 123b",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w500
                    )
                  ),
            
            
                  Spacer(),
            
                Icon(
                  Icons.notifications_active_outlined,
                  
                ),
                  
              ],),
            
              SizedBox(height:Get.height*0.02),
                  
              TextField(
                decoration: InputDecoration(
                hintText: 'Search products', // add placeholder text
                // border: InputBorder.none,
                // focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                
            // add border
                fillColor: Colors.grey[200], // add fill color
                filled: true, // fill the background
                prefixIcon: Icon(Icons.search_rounded), // add icon
              ),
              ),
                   ],
              ),
            ),
            SizedBox(height:Get.height*0.02),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0,0,0,0),
              child: Row(
                children: [
                  Container(
                    height: Get.height*0.18,
                    width: Get.width*1-30,
                    color:Color.fromARGB(255, 255, 255, 255),
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index)  {
                                    return const SizedBox( width: 20);
                                  },
                      itemBuilder: (context, builder) {
                        return Container(
                            height:20,
                            width:Get.width*0.7,
                            
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/bread.jpg'),
                                fit:BoxFit.cover,
                              
                              ),
                              // color:Colors.yellow,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              // image
                            ),

                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                            
                                  Text(
                                    "30% off \n on bakery",
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600
                                      
                                      
                                    ),
                                    
                                  ),
                                ],
                              ),
                            ),
                          );
                      } ,
                    
                      
                    
                      ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,30,0,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                    ),

                    Row(children: [
                      Container(
                        height: Get.height*0.15,
                        width: Get.width*1-30,
                        color: Colors.white,


                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                              return Container(
                                width:100,height:100,
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(categoriesimg[index]),
                                            fit:BoxFit.cover,
                                          
                                          ),
                                          color: Color.fromARGB(255, 103, 101, 101)
                                        ),
                                        

                                      ),
                                    ),
                                    Text(
                                      categoriestext[index],
                                      style: GoogleFonts.poppins(
                            
                                        fontWeight:FontWeight.w600
                                      ),

                                      ),
                                  ],
                                ),
                               
                                );
                          }, 

                          itemCount: 4),
                      ),
                    ],)
                ],
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,20,30,0),
              child: Row(
                children: [
                  Text(
                    "Fruits",
                    style: GoogleFonts.poppins
                    (
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Spacer(),
                  Text("See all",
                    style: GoogleFonts.poppins(
                      color: Color.fromARGB(255, 126, 183, 127),
                      fontWeight: FontWeight.w700
                      
                    ),
                  ),
                ],
              ),
            ),
            
             Padding(
              padding: const EdgeInsets.fromLTRB(30.0,0,30,0),
               child: Container(
                height: Get.height*0.27,
                width: Get.width*1,
                color: Colors.white,
             
             
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                      return GestureDetector(
                        onDoubleTap: ()=> Get.to(()=>CategoryDetail()),
                        child: Container(
                          // width:200,height:200,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: Get.height*0.25,
                              width: Get.width*0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: Color.fromARGB(31, 158, 158, 158),
                                  width: 2,
                                ),
                                
                                image: DecorationImage(
                                  image: AssetImage(fruitsimg[index]),
                                  fit:BoxFit.cover,
                                
                                ),
                                color: Color.fromARGB(255, 103, 101, 101)
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    right: 10,
                                    child: Icon(
                                      Icons.favorite_outline_rounded,
                                      size: 25,
                                      ),
                                  ),
                      
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 101, 192, 104),
                                        shape: BoxShape.circle
                                      ),
                                      child: Icon(
                                          Icons.add_rounded,
                                          color: Colors.white,
                                          size: 22,
                                        )
                                      ),
                                  ),
                      
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text(
                                                fruitstext[index],
                                                style: GoogleFonts.poppins(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600
                                                ),
                                              ),
                                            Row(
                                              children: [
                                                Text(
                                                    "\$" + fruitprice[index],
                                                    style: GoogleFonts.poppins(
                                                      color: Colors.orange,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 16
                                                    ),
                                                  ),
                                                Text(
                                                    " / kg",
                                                    style: GoogleFonts.poppins(
                                                      color: Color.fromARGB(157, 158, 158, 158),
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 15
                                                    ),
                                                  )
                                              ],
                                            )
                                            
                                          ]
                                      ),
                                  ),
                                ],
                              ),
                                   
                            ),
                          ),
                          
                          ),
                      );
                  }, 
             
                  itemCount: 2),
                         ),
             ),
          ],
        ),
      ),
    );
  }
}