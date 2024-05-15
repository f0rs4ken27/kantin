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
          Expanded(
            child: ListView.builder(
              itemCount: _menus.length,
              itemBuilder: (BuildContext context, int index) {
                final menu = _menus[index];
                return ListTile(
                  leading: Image.asset('assets/images${menu.name}.png',
                      width: 50, height: 50),
                  title: Text(menu.name ?? ''),
                  trailing: Text(menu.price ?? ''),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
