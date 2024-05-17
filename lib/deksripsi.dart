import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:canteen/menu.dart';

class DetailPage extends StatelessWidget {
  final Menu menu;

  DetailPage({required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(-0.337, 1),
            colors: <Color>[Color(0xFF3F1F9B), Color(0xFF7F7CF2)],
            stops: <double>[0, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1, 98),
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/${menu.name}.jpeg',
                    ),
                  ),
                ),
                width: 191,
                height: 177,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  ),

                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 104.1,
                      top: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 50, 20, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 450.1,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 100),
                                      child: Text(
                                        menu.name ?? '',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Rp ${menu.price}',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 20,
                                          color: Color(0xFF000000),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(8.4, 0, 0, 79),
                            child: Text(
                              menu.description ?? '',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0xFF3C2A2A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
