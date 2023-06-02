import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedimageIndex = 0;

  List<String> ProductImages = [
    'assets/Single product/Side view.png',
    'assets/Single product/Side and Top view.png',
    'assets/Single product/Top view.png',
    'assets/Single product/Back view.png',
    'assets/Single product/Cinematic 1.png',
    'assets/Single product/Cinematic 2.png'
  ];

  void onimageTap(int index) {
    setState(() {
      selectedimageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon:Icon(MdiIcons.cart))],
          backgroundColor: Color(0xFFD9D9D9),
          foregroundColor: Colors.black,
          leading: BackButton(),
          title: Center(
            child: Text(
              'Sneaker Details',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
            ),
          ),
        ),
    body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:24.0,vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Bigger Image screen //
              Container(
                height: 300,
                width: 408,
                decoration:BoxDecoration(
                  color: Color(0xFFD9D9D9).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(ProductImages[selectedimageIndex]),
              ),

              SizedBox(height: 24,),

              //Other Images //

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i =0;i<ProductImages.length;i++)...[
                      GestureDetector(
                        onTap: () => onimageTap(i),
                        child: Container(
                          height:90,
                          width: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: i == selectedimageIndex
                                  ?Colors.blue
                                  :Color(0XFFD9D9D9),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(9),
                            color: Color(0xFFD9D9D9),

                        ),
                          child: Image.asset(ProductImages[i]),
                      ),
                      ),
                    if(i<ProductImages.length-1)
                      SizedBox(width: 16,),
                      ],
                  ],
                ),
              ),

              //<----> Main product Image and thumbnail  ENDS<---->//

              SizedBox(height: 24,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Air Jordan 1 Low FlyEase',style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),),
                      SizedBox(height: 4,),
                      Text('Mens Easy On/Off Shoes',style:GoogleFonts.montserrat(fontWeight: FontWeight.w500,fontSize: 12),),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(MdiIcons.heart))
                ],
              ),
              const SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('₹ 11,895',style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 24),),
                  TextButton.icon(onPressed: () {}, label:Text("4.7",style:GoogleFonts.montserrat(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),),
                    icon:const Icon(Icons.star,color: Color(0xFFFFB800),),
                  ),
                ],
              ),

              const SizedBox(height:12),
              const Divider(
                color: Color(0xFFD9D9D9),
                thickness: 2,
              ),

              const SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('SELECT SIZE',style:GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 14),),
                  Text('SIZE CHART',style:GoogleFonts.montserrat(fontWeight: FontWeight.w600,fontSize: 10),),
                ],
              ),
              SizedBox(height: 10,),

              //<----->Available  Sizes <----->
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("6.5",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),

                    const SizedBox(width:12),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("7.5",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),

                    const SizedBox(width:12),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("8",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),

                    const SizedBox(width:12),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("9",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),

                    const SizedBox(width:12),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("10",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),

                    const SizedBox(width:12),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFFD9D9D9)
                      ),
                      child: Center(child: Text("11",style: GoogleFonts.montserrat(fontWeight: FontWeight.bold,fontSize: 16),)),
                    ),
                  ],
                ),
              ),
            ], //Main column children ends
          ),
        ),
    )
    );
  }
}
