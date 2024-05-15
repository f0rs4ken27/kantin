
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardKantinState createState() => _DashboardKantinState();
}

class _DashboardKantinState extends State<DashboardKantin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(50),
        ),
  child: Container(
    padding: EdgeInsets.fromLTRB(36, 53, 20, 0),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0.5, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                      child: SizedBox(
                        width: 242.6,
                        child: Text(
                          'Menu',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 40,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0.3, 0, 3.7),
                      child: SizedBox(
                        width: 100.9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10.7, 12.4, 15.3),
                              width: 32.5,
                              height: 30,
                              child: 
                              SizedBox(
                                width: 32.5,
                                height: 30,
                                child: SvgPicture.network(
                                  'assets/vectors/vector_1_x2.svg',
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Color(0xFFD9D9D9),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'assets/images/ellipse_1.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 56,
                                height: 56,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(19.6, 0, 19.6, 56),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7.8, 21, 4.8),
                        width: 20.4,
                        height: 20.4,
                        child: 
                        SizedBox(
                          width: 20.4,
                          height: 20.4,
                          child: SvgPicture.network(
                            'assets/vectors/vector_x2.svg',
                          ),
                        ),
                      ),
                      Text(
                        'cari',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          color: Color(0xFF7D7070),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4, 0, 4, 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'makanan',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 18, 1),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBCBBF5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                          Positioned(
                            right: 0,
                            top: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'assets/images/download_3.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 72,
                                height: 59,
                              ),
                            ),
                          ),
                    Container(
                                height: 80,
                                padding: EdgeInsets.fromLTRB(4, 10, 4, 11),
                                child: 
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'assets/images/download_3.jpeg',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 72,
                                    height: 59,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 19, 1),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBCBBF5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.fromLTRB(4, 10, 4, 11),
                            child: 
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'assets/images/sate_2.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 72,
                                height: 59,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 17, 1),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBCBBF5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.fromLTRB(4, 12, 4, 9),
                            child: 
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'assets/images/download_21.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 72,
                                height: 59,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 1, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFBCBBF5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 80,
                            padding: EdgeInsets.fromLTRB(4, 12, 4, 9),
                            child: 
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'assets/images/download_2.jpeg',
                                  ),
                                ),
                              ),
                              child: Container(
                                width: 72,
                                height: 59,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(7.4, 0, 20.5, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 45.7, 0),
                      child: Text(
                        'nasi goreng',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF5F5050),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 33, 27),
                      child: Text(
                        'sate',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF5F5050),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 34.1, 27),
                      child: Text(
                        'martabak',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF5F5050),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 27),
                      child: Text(
                        'soto',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Color(0xFF5F5050),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4, 0, 4, 9),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'minuman',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 18, 2),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFBCBBF5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 80,
                                padding: EdgeInsets.fromLTRB(4, 12, 4, 9),
                                child: 
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'assets/images/download_12.jpeg',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 72,
                                    height: 59,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 2, 19, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFBCBBF5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 80,
                                padding: EdgeInsets.fromLTRB(4, 10, 4, 11),
                                child: 
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'assets/images/sate_1.jpeg',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 72,
                                    height: 59,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 17, 2),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFBCBBF5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 80,
                                padding: EdgeInsets.fromLTRB(4, 12, 4, 9),
                                child: 
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'assets/images/download_11.jpeg',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 72,
                                    height: 59,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 1, 0, 1),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFBCBBF5),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: 80,
                                padding: EdgeInsets.fromLTRB(4, 12, 4, 9),
                                child: 
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'assets/images/download_1.jpeg',
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    width: 72,
                                    height: 59,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(27.3, 0, 19.1, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 13.5, 27),
                          child: SizedBox(
                            width: 69.9,
                            child: Text(
                              'jus',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF5F5050),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 36.6, 27),
                              child: Text(
                                'es teh',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xFF5F5050),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 44, 27),
                              child: Text(
                                'es susu',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xFF5F5050),
                                ),
                              ),
                            ),
                            Text(
                              'kopi susu',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                                color: Color(0xFF5F5050),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: -11,
          right: 11,
          top: 79,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              width: 374,
              height: 48,
            ),
          ),
        ),
      ],
    ),
  ),
),
 );
  }
}
