import 'package:app_iti/view/login_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final _dio = Dio();
  List<dynamic> products = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      Response response = await _dio.get("https://fakestoreapi.com/products");

      setState(() {
        products = response.data;
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        isLoading = false;
      });

      debugPrint("Error: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Screen'),actions: [
        IconButton(onPressed: () async {

          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.clear();

          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
          
        }, icon: Icon(Icons.exit_to_app))
      ],),
      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                      leading: Image.network(
                        product["image"],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(product["title"]),
                      subtitle: Text("\$${product["price"]}"),
                    ),
                  );
                },
              ),
    );
  }
}
