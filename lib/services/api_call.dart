import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/test.dart';
import 'package:http/http.dart' as http;

class APICals extends StatefulWidget {
  const APICals({super.key});

  @override
  State<APICals> createState() => _APICalsState();
}

class _APICalsState extends State<APICals> {
  @override
  Widget build(BuildContext context) {
 Future<Product> fetchProduct() async {
  var url = Uri.parse('https://api.restful-api.dev/objects/7');
  var response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      return Product(
        id: jsonResponse['id'],
        name: jsonResponse['name'],
      );
    } else {
      throw Exception('Failed to load product');
    }
  }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            Product product = await fetchProduct();
            print('Product ID: ${product.id}, Name: ${product.name}');
          },
          child: const Text('Fetch Product'),
        ),
      ),
    );
  }
}