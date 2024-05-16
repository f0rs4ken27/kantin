import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:canteen/deksripsi.dart';
import 'package:canteen/menu.dart';

class DashboardKantin extends StatefulWidget {
  @override
  _DashboardKantinState createState() => _DashboardKantinState();
}

class _DashboardKantinState extends State<DashboardKantin> {
  List<Menu> _menus = [];

  Future<void> fetchMenus() async {
    final response = await http.get(Uri.parse('http://localhost/kantin/read.php'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      if (jsonResponse.isNotEmpty) {
        setState(() {
          _menus = jsonResponse.map((menu) => Menu.fromJson(menu)).toList();
        });
      } else {
        throw Exception('Invalid JSON response');
      }
    } else {
      throw Exception('Failed to load menus');
    }
  }

  @override
  void initState() {
    fetchMenus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40, 30, 10, 0),
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Kantin",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.shopping_cart, size: 30),
                      SizedBox(width: 16),
                      Image(
                        image: AssetImage('assets/download.png'),
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari makanan atau minuman',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Daftar Menu",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: _menus.map((menu) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(menu: menu,),
                          ),
                        );
                      },
                      child: _buildMenuWithName(
                        'assets/images/${menu.name}.jpeg',
                        menu.name ?? '',
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuContainer(String imagePath, double width, String name) {
    return Container(
      width: 110,
      margin: EdgeInsets.fromLTRB(0, 0, 18, 1),
      decoration: BoxDecoration(
        color: Color(0xFFBCBBF5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 90,
            padding: EdgeInsets.fromLTRB(4, 10, 4, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imagePath),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Widget _buildMenuWithName(String imagePath, String name) {
    return Container(
      child: Column(
        children: [
          _buildMenuContainer(imagePath, 110, name),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF5F5050),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
