import 'dart:ffi';

import 'package:flutter/material.dart';

class Product { 
  @required String judul;
  @required String deskripsi;
  @required String  imageURL;
  @required int harga;
  Product(this.judul,this.deskripsi,this.imageURL,this.harga);
}
class BeachList { 
  final String? imageUrl;
  final String? judul;
  final String? location;
  final int? harga;
  final double? star;
  BeachList(this.imageUrl,this.judul,this.location,this.harga,this.star);
}