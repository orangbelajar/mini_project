import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Product {
  final String title, desc;
  final Color color;
  Product({
    required this.title,
    required this.desc,
    required this.color,
  });
}

List<Product> products = [
  
  Product(
    title: "Catatan Manajemen",
    color: Color(0xff749F82),
    desc:
        "Manajemen adalah sebuah proses yang dilakukan seseorang dalam mengatur kegiatan yang dikerjakan individu atau kelompok.,",
  ),
  Product(
    title: "Tugas",
    color: Color(0xFFBCE29E),
    desc:
        "*Membuat program state management\n*Membuat Material Widget",
  ),
  Product(
    title: "List Belanja",
    color: Color(0xFFffaa5b),
    desc:
        "1.Bawang 1kg\n2.Gula 1/5kg\n3.Minyak makan 1kg\n4.Beras 5kg",
  ),
  Product(
    title: "Reminder",
    color: Color(0xff9A86A4),
    desc:
        "Jangan lupa bawa botol minum",
  ),
];