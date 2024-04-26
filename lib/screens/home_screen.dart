//import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:product/services/product_service.dart';
import 'package:product/screens/add_product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text ("Daftar Product"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder<Map<String, String>>(
              stream: _productService.getProductList(),
              builder: (context, snapshot){
                if(snapshot.hasData){
                  Map<String, String> items = snapshot.data!;
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context,index){
                      final key = items.keys.elementAt(index);
                      final item = items[key];
                      return ListTile(
                        title: Text(item!),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: (){
                            _productService.removeProductItem(key);
                          },
                        ),
                      );
                    },
                  );
                  } else if (snapshot.hasError){
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else{
                  return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddProductScreen()
          ),
        ),
        tooltip: "Tambah",
        child: Icon(Icons.add),
      ),
    );
  }
}
