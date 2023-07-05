import 'package:flutter/material.dart';
import 'package:mask/model/store.dart';
import 'package:mask/repository/store_repository.dart';

class StoreModel with ChangeNotifier {
  List<Store> stores = [];
  final _storeRepository = StoreRepository();

  StoreModel() {
    fetch();
  }

  Future fetch() async {
    stores = await _storeRepository.fetch();
    notifyListeners();
  }
}
