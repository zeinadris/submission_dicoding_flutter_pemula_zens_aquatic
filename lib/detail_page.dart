import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zens_aquatic/Package/list_product.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://wa.me/6288802675025');

class DetailPage extends StatelessWidget {
  final ListProduct listProduct;
  const DetailPage({Key? key, required this.listProduct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return WebDetailPage(listProduct: listProduct);
      } else {
        return MobileDetailPage(listProduct: listProduct);
      }
    });
  }
}

class MobileDetailPage extends StatelessWidget {
  final ListProduct listProduct;

  const MobileDetailPage({Key? key, required this.listProduct})
      : super(key: key);

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
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blueAccent,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              listProduct.name,
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(listProduct.imageAssets),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    color: Colors.blueAccent,
                    child: Column(
                      children: [
                        Container(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              listProduct.description,
                              textAlign: TextAlign.justify,
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
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
                                    Text(listProduct.price,
                                        style: TextStyle(
                                            fontSize: 32, color: Colors.white))
                                  ]),
                            ),
                          ),
                        ),
                        Container(
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
                              onPressed: () {
                                _launchUrl();
                              },
                              child: Text(
                                'Order Here!',
                                style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
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

class WebDetailPage extends StatelessWidget {
  final ListProduct listProduct;
  const WebDetailPage({Key? key, required this.listProduct}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(listProduct.imageAssets),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Card(
                        color: Colors.blueAccent,
                        child: Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  child: Text(
                                    listProduct.name,
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
                              color: Colors.blueAccent,
                              child: Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  listProduct.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              color: Colors.blueAccent,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.monetization_on,
                                          color: Colors.white,
                                          size: 40,
                                        ),
                                        Text(listProduct.price,
                                            style: TextStyle(
                                                fontSize: 32,
                                                color: Colors.white))
                                      ]),
                                ),
                              ),
                            ),
                            Container(
                                color: Colors.blueAccent,
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  child: Text(
                                    'Gratis packing, Gratis karantina, Harga bisa nego!!!, Garansi Pengiriman, Pengiriman seluruh Indonesia, Detail produk lebih lengkap dan negosiasi Klik Tombol dibawah ini!',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )),
                            const SizedBox(height: 32),
                            Container(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _launchUrl();
                                  },
                                  child: Text(
                                    'Order Here!',
                                    style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
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

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
