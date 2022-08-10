import 'dart:ui';

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Detail Produck',
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 150, top: 15, bottom: 20),
                child: Text(
                  'Chana Limbata',
                  style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 24,
                      color: Color.fromARGB(
                        0xFF,
                        0x2B,
                        0x48,
                        0x65,
                      ),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/list/limbata.jpg'),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Bogo (Channa limbata) adalah sejenis ikan air tawar anggota suku Channidae (kerabat gabus). Dahulu digolongkan ke dalam spesies Channa gachua, ikan buas ini menyebar luas di Asia Tenggara hingga Indonesia. Bertubuh relatif kecil, dalam bahasa Inggris ikan ini dikenal dengan nama umum Dwarf snakehead.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(
                        0xFF,
                        0x2B,
                        0x48,
                        0x65,
                      )),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.monetization_on,
                        color: Colors.green,
                        size: 40,
                      ),
                      Text(' : Rp 100.000',
                          style: TextStyle(
                              fontSize: 32,
                              color: Color.fromARGB(
                                0xFF,
                                0x2B,
                                0x48,
                                0x65,
                              )))
                    ]),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 15, right: 20, left: 20, bottom: 10),
                child: Text(
                  'Gratis packing\nHarga bisa nego!!!\nGaransi Pengiriman\nPengiriman seluruh Indonesia\nDetail produk lebih lengkap dan negosiasi Klik Tombol dibawah ini!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold),
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
