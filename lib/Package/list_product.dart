import 'package:flutter/material.dart';

class ListProduct {
  String name;
  String description;
  String price;
  String imageAssets;

  ListProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.imageAssets,
  });
}

var listProductList = [
  ListProduct(
      name: 'Channa Limbata',
      description:
          'Bogo (Channa limbata) adalah sejenis ikan air tawar anggota suku Channidae (kerabat gabus). Dahulu digolongkan ke dalam spesies Channa gachua, ikan buas ini menyebar luas di Asia Tenggara hingga Indonesia. Bertubuh relatif kecil, dalam bahasa Inggris ikan ini dikenal dengan nama umum Dwarf snakehead.',
      price: ' : Rp 100.000',
      imageAssets: 'images/list/limbata.jpg'),
  ListProduct(
    name: 'Channa Pulchra',
    description:
        'Ikan Channa Pulchra merupakan salah satu jenis ikan gabus / snakehead (ikan berkepala ular) yang banyak digemari para pecinta ikan predator. Ikan Channa Pulchra berasal dari Myanmar, ikan ini memiliki corak yang menarik dan unik. Mempunyai warna abu kebiruan dengan sirip berwarna oranye yang khas.',
    price: ' : Rp 150.000',
    imageAssets: 'images/list/pulchra.jpg',
  ),
  ListProduct(
    name: 'Louhan Cencu',
    description:
        'Louhan Cencu. Ikan ini merupakan salah satu jenis ikan louhan lokal, lho. Karakteristiknya yaitu memiliki pola bintik pada tubuhnya. Louhan Cencu juga cenderung memiliki warna merah pada bagian tubuh hingga tengah badannya, lalu berwarna kuning keemasan dari tengah tubuh hingga ekornya.',
    price: ' : Rp 200.000',
    imageAssets: 'images/list/cencu.jpg',
  ),
];
