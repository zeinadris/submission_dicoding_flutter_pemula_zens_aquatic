import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Detail Product',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
              ),
            ),
            const FavoriteButton(),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  color: Colors.blueAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Channa Limbata',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('images/list/limbata.jpg'),
                  ),
                ),
                Card(
                  color: Colors.blueAccent,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      'Bogo (Channa limbata) adalah sejenis ikan air tawar anggota suku Channidae (kerabat gabus). Dahulu digolongkan ke dalam spesies Channa gachua, ikan buas ini menyebar luas di Asia Tenggara hingga Indonesia. Bertubuh relatif kecil, dalam bahasa Inggris ikan ini dikenal dengan nama umum Dwarf snakehead.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blueAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.monetization_on,
                              color: Colors.white,
                              size: 40,
                            ),
                            Text(' : Rp 100.000',
                                style: TextStyle(
                                    fontSize: 32, color: Colors.white))
                          ]),
                    ),
                  ),
                ),
                Card(
                  color: Colors.blueAccent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 15, right: 20, left: 20, bottom: 10),
                      child: Text(
                        'Gratis packing\nGratis karantina\nHarga bisa nego!!!\nGaransi Pengiriman\nPengiriman seluruh Indonesia\nDetail produk lebih lengkap dan negosiasi Klik Tombol dibawah ini!',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ));
  }
}
