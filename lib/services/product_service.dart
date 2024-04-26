import 'package:firebase_database/firebase_database.dart';

class ProductService{
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('product_list');

  Stream<Map<String, String>> getProductList(){
    return _database.onValue.map((event){
      final Map<String, String> items = {};
      DataSnapshot snapshot =event.snapshot;
      if(snapshot.value != null){
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              'Kode Produk: ${value['kode']} \nNama Produk: ${value['nama']}';
        });
      }
      return items;
    });
  }
  void addProductItem(String itemKode, String itemNama){
    _database.push().set({
      'kode': itemKode,
      'nama': itemNama
    });
  }
  Future<void> removeProductItem(String key) async{
    await _database.child(key).remove();
  }
}