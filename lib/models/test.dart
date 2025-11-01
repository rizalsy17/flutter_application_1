class Product {
String id;
String name;

Product({required this.id, required this.name});

factory Product.fromJson(Map<String, dynamic> json) {
  return Product(
    id: json['id'],
    name: json['name'],
  );
}
}