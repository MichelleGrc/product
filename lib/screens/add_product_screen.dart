import 'package:flutter/material.dart';
import 'package:product/services/product_service.dart';
import 'package:product/screens/home_screen.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _controllerKode = TextEditingController();
  final TextEditingController _controllerNama = TextEditingController();
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Product",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: _controllerKode,
                  decoration: InputDecoration(
                    labelText: 'Kode Produk',
                    border: OutlineInputBorder(),
                  ),
                ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: _controllerNama,
                  decoration: InputDecoration(
                    labelText: 'Nama Produk',
                    border: OutlineInputBorder(),
                  ),
                ),
                ),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              _productService.addProductItem(
                _controllerKode.text, _controllerNama.text);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Text("Simpan"),
          ),),
        ],
      ),
    );
  }
}
