import 'package:flutter/cupertino.dart';

class Info with ChangeNotifier {
  List<String> _products;

  Info() {
    _products = ['Colgate', 'Pepsodent'];
  }

  //getter
  List<String> get products => _products;

  // void _setProducts(List <String > products){
  //   _products = products;
  //   notifyListeners();
  // }

  void addProduct(String product) {
    if (_products.contains(product) == false) {
      _products.add(product);
      notifyListeners();
    }
  }

  void removeProduct(String product) {
    if (_products.contains(product) == true) {
      _products.remove(product);
      notifyListeners();
    }
  }
}
