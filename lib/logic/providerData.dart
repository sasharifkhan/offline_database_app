import 'package:flutter/material.dart';


class Providerdata extends ChangeNotifier {

  List<Map<String, dynamic>> _datalist= [];

  List<Map<String,dynamic>> datalist()=>_datalist;


  addnewdata(Map<String,dynamic> data){
    _datalist.add(data);
    notifyListeners();
  }
  removedata(Map<String,dynamic> data){
    _datalist.remove(data);
    notifyListeners();
  }

  bool _isSelected = false;
  bool isSelected() => _isSelected;

  checkboxtoggleswitch(bool value){
    _isSelected = value;
    notifyListeners();

  }


}