class Menu {
  final String? name;
  final String? price;
  final String? description;

  Menu({this.name, this.price, this.description});

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      name: json['nama_menu'],
      price: json['harga'],
      description: json['deskripsi'],
    );
  }
}
