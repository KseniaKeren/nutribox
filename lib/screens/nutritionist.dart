import 'package:flutter/cupertino.dart';

class Nutritionist{
  String name;
  String specialization;
  Image photo;

  Nutritionist({this.name,this.specialization});

  changeName(nameN){
    this.name = nameN;
  }
  changeSpecialization(spec){
    this.specialization = spec;
  }
}