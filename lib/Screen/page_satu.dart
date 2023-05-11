import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:project_terbaru/Models/product_model.dart';
import 'package:project_terbaru/Screen/destination_detail.dart';
import 'package:project_terbaru/Screen/page_dua.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   Faker faker  = Faker();

  @override

late TabController _tabController;

  Widget build(BuildContext context) {
    List <BeachList> beachList =  [
      BeachList("https://cntres-assets-ap-southeast-1-250226768838-cf675839782fd369.s3.amazonaws.com/imageResource/2021/06/24/1624553857684-40566380ed85760f77496a3434b9f4cf.jpeg", "Lombok Beach", "Lombok Indonesia", 1000, 4.5),
       BeachList("https://www.indonesia.travel/content/dam/indtravelrevamp/en/destinations/destination-update-may-2019/RA_Pianemoisland_indtravel.jpg", "Raja Ampat", "Papua Indonesia", 1000, 4.5),
        BeachList("https://cntres-assets-ap-southeast-1-250226768838-cf675839782fd369.s3.amazonaws.com/imageResource/2021/06/24/1624553857684-40566380ed85760f77496a3434b9f4cf.jpeg", "Pantai Di Lombok", "Lombok Indonesia", 1000, 4.5)
    ];
 final mediaQueryHeight = MediaQuery.of(context).size.height;
 final mediaQueryWidth = MediaQuery.of(context).size.width;
 final bodyHeight = mediaQueryHeight - AppBar().preferredSize.height - MediaQuery.of(context).padding.top;
Color colorPrimary = Color(0xffFCFCFC);
Color whiteColor = Color.fromARGB(0, 255, 255, 255);
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        
        child:  Scaffold(
         
            bottomNavigationBar: menu(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
   Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              child: Icon(
                Icons.menu,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      blurRadius: 3.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0))
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Location",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.red,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Bali,Indonesia",
                              style: TextStyle(fontSize: 20.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 40,
              height: 40,
              child: Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 6.0,
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 0.0))
                ],
              ),
            ),
          ],
        ),
        // Widget di bawah Row
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
        
         decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),
         boxShadow: [
                  BoxShadow(
                      color: Color(0xffDDDDDD),
                      blurRadius: 1.0,
                      offset: Offset(0.0, 0.0))
                ],
         ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(decoration: InputDecoration(icon: Icon(Icons.search,color: Colors.grey,size: 30,),hintText: "Search Destination",
              border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                suffixIcon: Icon(Icons.filter_alt_rounded,color: Colors.blue,size: 30,)
              ),
              
              ),
            )
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContainerImage('assets/images/camping.png',"Camping",Color(0xff2E94B9),Colors.white),
              ContainerImage('assets/images/payung.png',"Beach",Colors.white,Colors.grey),
              ContainerImage('assets/images/gunung.png',"Mountain",Colors.white,Colors.grey),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
 
 Container(
  height: 500,
  child: ListView(
    children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: beachList.map((e) {
            
            return Column(

children: [
    GestureDetector(
                  onTap: () {
                    // Aksi yang akan dilakukan ketika item di klik
                   Navigator.of(context).push(MaterialPageRoute(builder:(context) =>DetailScreen()  ));
                  },
              child: Container(
                   height: 450,
    width: 300,
    margin: EdgeInsets.only(right: 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Color(0xffDDDDDD),
          blurRadius: 1.0,
          offset: Offset(0.0, 0.0),
        ),
      ],
    ),
                child: Column(
              
                    crossAxisAlignment: CrossAxisAlignment.start,
              
                  children: [
                    Container(
                      
                       decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                    child: Container(
                    child: Image.network(e.imageUrl.toString(), fit: BoxFit.cover,
                        height: 300,
                        width: 300,),
                ),
              )
                      ),
                    ),
                   Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                              child: Text(e.judul ?? '',textAlign: TextAlign.left,style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black87
                              ),),
                             ),
                              Container(
                                margin: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsetsDirectional.only(end:8),
                                    child: Icon(Icons.location_pin,size: 20,color: Colors.red,),
                                  ),
                                  SizedBox(
                                   
                                    child: Container(
                                      color: Colors.red,
                                    ),
                                  ),
                                   Container(
                                    child: Text(e.location as String,style: TextStyle(
                                      color: Colors.grey
                                    ),),
                                  ),
                                
                                 
                                ],
                              )
                             ),
                             Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      child:RichText(
                                        
                                        text:TextSpan(
                                          text: " Rp.${e.harga}",
                                          style: TextStyle(color: Color(0xff2E94B9),fontSize: 20.0),
                                          children: <TextSpan> [
                                            TextSpan(
                                               text: "/",
                                            style: TextStyle(color: Colors.grey,fontSize: 20.0)
                                            ),
                                           TextSpan(
                                            text: "person",
                                            style: TextStyle(color: Colors.grey,fontSize: 13)
                                           )
                                          ]
                                        ),
                                        ),
                                        
                                      ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Icon(Icons.star,color: Color(0xFFFFD24C),),
                                        ),
                                        Container(
                                          child: Text(e.star.toString()),
                                        ),
                                      ],
                                    ),
                                  )
              
                                ],
                              ),
                             )
                           ],
                         ),
                       ),
                     ],
                   )
                
                  ],
                ),
              ),
            ),
  ],
            );
      
          }).toList(),
        ),
      ),
  
    ],
  ),
),

SizedBox(
  height: 30
),
Container(
  color: Colors.red,
  height: 200,
  width: 200,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        child: Text("Hello World"),
          padding: EdgeInsets.all(20), // tambahkan properti padding di sini
      ),
      
    ],
  ),

)
     
      ],
    ),
  ),


          ],

)

        ),
      
      ) 
     
      
    
      
    );
  }
}

class ContainerImage extends StatelessWidget {
  final String ImageUrl;
  final String text;
  final Color color;
  final Color colorText;
   ContainerImage(this.ImageUrl,this.text,this.color,this.colorText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image.asset(ImageUrl,width: 30,),
          ),
          Container(
            child: Text(text,style: TextStyle(
              color:colorText,
              fontSize: 14.0,
              fontWeight: FontWeight.bold
            ),),

          ),
          
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final double widthApp;
  MyContainer(this.widthApp);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrained){
        return  Container(
        width: widthApp * 0.3,
        height: constrained.maxHeight  * 0.4,
        color: Colors.amber,
      );
      },
     
    );
  }
}
 Widget menu() {
return Container(
  color: Colors.white,
  child: TabBar(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.white70,
    indicatorSize: TabBarIndicatorSize.tab,
   
    indicatorColor: Colors.black,
    tabs: [
      Tab(
        text: "Transactions",
        icon: Icon(Icons.home,color: Colors.blue,size: 30,),
      ),
      Tab(
        text: "Bills",
        icon: Icon(Icons.explore,color: Colors.grey,size: 30,),
      ),
      Tab(
        text: "Balance",
        icon: Icon(Icons.heart_broken,color: Colors.grey,size: 30,),
      ),
      Tab(
        text: "Options",
        icon: Icon(Icons.person,color: Colors.grey,size: 30,),
      ),
    ],
  ),
);
} 