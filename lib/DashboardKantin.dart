import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Menu {
  final String? name;
  final String? price;

  Menu({
    this.name,
    this.price,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      name: json['nama_menu'],
      price: json['harga'],
    );
  }
}

class DashboardKantin extends StatefulWidget {
  @override
  _DashboardKantinState createState() => _DashboardKantinState();
}

class _DashboardKantinState extends State<DashboardKantin> {
  List<Menu> _menus = [];

  Future<void> fetchMenus() async {
    final response =
        await http.get(Uri.parse('http://localhost/kantin/read.php'));

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
            margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Cari makanan atau minuman',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40, 30, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Daftar Makanan",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.8,
              children: _menus.map((menu) {
                return Center(
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        // Handle tap event
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/${menu.name}.jpeg',
                                height: 120,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              menu.name ?? '',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
