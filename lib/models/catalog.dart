class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    ),
  ];
}

class Item {
  final int? id;
  final  name; // Make the 'name' parameter nullable by adding '?' after 'String'
  final  desc;
  final num? price;
  final  color;
  final  image;

  Item({
    this.id,
    this.name, // Update 'name' parameter to be nullable
    this.desc,
    this.price,
    this.color,
    this.image,
  });
}





