import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneakrs/productscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //START OF HAMBURGER MENU //

        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Shahid Ali",
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
                accountEmail: Text(
                  "shahidsonu717@gmail.com",
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://img.freepik.com/premium-photo/digital-art-selected_771335-49726.jpg?w=740',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://img.freepik.com/free-photo/abstract-luxury-gradient-blue-background-smooth-dark-blue-with-black-vignette-studio-banner_1258-56228.jpg?size=626&ext=jpg&ga=GA1.2.1754311888.1643023209&semt=sph',
                        ),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                leading: Icon(MdiIcons.home),
                title: Text(
                  'HOME',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.shoeSneaker),
                title: Text(
                  'NEW RELEASES',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.accessPoint),
                title: Text(
                  'EARLY ACCESS',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.contactlessPayment),
                title: Text(
                  'MY PAYMENTS',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.shopping),
                title: Text(
                  'MY ORDERS',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.account),
                title: Text(
                  'MY ACCOUNT',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
              ListTile(
                leading: Icon(MdiIcons.logout),
                title: Text(
                  'SIGN OUT',
                  style: GoogleFonts.lato(fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(MdiIcons.cart))],
          title: Center(
              child: Text(
            'SNEAKRS',
            style: GoogleFonts.lato(fontWeight: FontWeight.w900),
          )),
          backgroundColor: Color(0xFFD9D9D9),
          foregroundColor: Colors.black,
          elevation: 1,
        ),

        //END OF HAMBURGER MENU //

        body: SingleChildScrollView(
          child: Column(children: [
            // Search Bar //
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 48,
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12)),
                        label: Text(
                          "What are you looking for",
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        prefixIcon: Icon(MdiIcons.magnify))),
              ),
            ),

            //Brands //

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Image.asset(
                    'assets/logos/Adidas logo.png',
                  ),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFB0B0B0),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/logos/Jordan logo.png',
                  ),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFB0B0B0),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/logos/Puma logo.png',
                  ),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFB0B0B0),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/logos/New balance.png',
                  ),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFB0B0B0),
                  ),
                ),
                Container(
                  child: Image.asset(
                    'assets/logos/Converse Logo.png',
                  ),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFB0B0B0),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //Banner //

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                width: 383,
                height: 123,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(children: [
                  Image.asset(
                    'assets/products/Images at banner.png',
                    height: 115,
                    width: 175,
                  ),
                  Text(
                    "SUMMER SALE - 2023 \n UPTO 80%",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  )
                ]),
              ),
            ),

            SizedBox(height: 20,),

            //<----->TRENDING PRODUCTS<-----> //

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending Products",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("View all",style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 14),)
                ],
              ),
            ),

            // Product Tile //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:23.0,vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
              
                    //<--->PRODUCT TILE 1 <--->//
              
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xFFB0B0B0).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:11.0,horizontal: 22),
                            child: Container(
                              width: 130,
                              height: 78,
                              child: Image.asset('assets/products/Air jordan 1 retro High OG.png'),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: SizedBox(child: Text('Air Jordan 1 Retro High OG Prototype',style:GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 12) ,)),
                          ),
              
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: Text("₹ 26,999",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 14),),
                          )
                        ]
                        ),
                    ),

                    // <-----> Product 1 Ends <----->

                    SizedBox(width: 16,),
              
                    //<--->PRODUCT TILE 2 <--->//
              
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xFFB0B0B0).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:11.0,horizontal: 22),
                            child: Container(
                              width: 130,
                              height: 78,
                              child: Image.asset('assets/products/Air jordan 1 Low black fire red.png'),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: SizedBox(child: Text('Air Jordan 1 Low Black Fire Red',style:GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 12) ,)),
                          ),
              
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: Text("₹ 17,999",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 14),),
                          )
                        ]
                        ),
                    ),

                    // <-----> Product 2 Ends <-----> //

                    SizedBox(width: 16,),

                    //<-----> Product 3 Starts <----->

                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>const ProductScreen() ));
                      },
                      child: Container(
                        width: 175,
                        height: 175,
                        decoration: BoxDecoration(
                          color: Color(0xFFB0B0B0).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:11.0,horizontal: 22),
                              child: Container(
                                width: 130,
                                height: 78,
                                child: Image.asset('assets/Single product/Side view.png'),
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:22.0),
                              child: SizedBox(child: Text('Air Jordan 1 Low Fly Ease',style:GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 12) ,)),
                            ),
                                  
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:22.0),
                              child: Text("₹ 11,895",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 14),),
                            )
                          ]
                          ),
                      ),
                    ),

                    // <-----> Product 3 Ends <----->
                    
                  ],
                ),
              ),
            ),

            //<----> Collaboration products <----> //

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Collab Products",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text("View all",style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 14),)
                ],
              ),
            ),

            // Product Tile //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:23.0,vertical: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
              
                    //<--->PRODUCT TILE 1 <--->//
              
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xFFB0B0B0).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:11.0,horizontal: 22),
                            child: Container(
                              width: 130,
                              height: 78,
                              child: Image.asset('assets/products/Air jordan 1 x Spider verse.png'),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: SizedBox(child: Text('Air Jordan 1 X Marvel Spider-Verse ',style:GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 12) ,)),
                          ),
              
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: Text("₹ 29,999",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 14),),
                          )
                        ]
                        ),
                    ),

                    SizedBox(width: 16,),
              
                    //<--->PRODUCT TILE 2 <--->//
              
                    Container(
                      width: 175,
                      height: 175,
                      decoration: BoxDecoration(
                        color: Color(0xFFB0B0B0).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:11.0,horizontal: 22),
                            child: Container(
                              width: 130,
                              height: 78,
                              child: Image.asset('assets/products/Nike Dunk Low Sparks x Lisa Leslie.png'),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: SizedBox(child: Text('Nike Dunk Low Sparks x Lisa Leslie',style:GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 12) ,)),
                          ),
              
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:22.0),
                            child: Text("₹ 17,499",style: GoogleFonts.montserrat(fontWeight: FontWeight.w700,fontSize: 14),),
                          )
                        ]
                        ),
                    )
                  ],
                ),
              ),
            ),


          ]),
        ));
  }
}