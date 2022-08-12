import 'package:flutter/material.dart';
import 'package:zens_aquatic/Package/list_product.dart';
import 'package:zens_aquatic/detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Product Zens Aquatic'),
      ),
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: listProductList.length,
            itemBuilder: (BuildContext ctx, index) {
              final ListProduct listProduct = listProductList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage(listProduct: listProduct);
                  }));
                },
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          listProduct.imageAssets,
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            width: 200,
                            height: 50,
                            child: Container(
                              width: 100,
                              color: Colors.black54,
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                listProduct.name,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
