import 'package:flutter/cupertino.dart';

import '../model/travelmodel.dart';

class Travelviewmodel extends ChangeNotifier {
  bool _isLoading = true;

  final List<Travelmodel> name = [
    Travelmodel(title: 'Kayaking'),
    Travelmodel(title: 'Snorkeling'),
    Travelmodel(title: 'Ballooning'),
    Travelmodel(title: 'Pabbi'),
    Travelmodel(title: 'Hiking'),
  ];

  bool get isLoading => _isLoading;
  List<Travelmodel> get app => name;

  // Constructor - simulate loading
  Travelviewmodel() {
    loadData();
  }

  Future<void> loadData() async {
    _isLoading = true;
    notifyListeners();

    // Simulate API call (3 seconds)
    await Future.delayed(Duration(seconds: 3));

    _isLoading = false;
    notifyListeners();
  }
}