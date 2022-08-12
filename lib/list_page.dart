import 'package:flutter/material.dart';
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
        child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailPage();
                  }));
                },
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(
                          'images/list/limbata.jpg',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            width: 200,
                            height: 50,
                            child: Container(
                              width: 100,
                              color: Colors.black54,
                              padding: const EdgeInsets.all(10),
                              child: const Text(
                                'Channa Limbata',
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
              ),
              Card(
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'images/list/limbata.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        width: 100,
                        height: 50,
                        child: Container(
                          width: 100,
                          color: Colors.black54,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'I Like Potatoes And Oranges',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
              Card(
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'images/list/limbata.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        width: 100,
                        height: 50,
                        child: Container(
                          width: 100,
                          color: Colors.black54,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'I Like Potatoes And Oranges',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
              Card(
                child: Stack(
                  children: <Widget>[
                    Image.asset(
                      'images/list/limbata.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                        width: 100,
                        height: 50,
                        child: Container(
                          width: 100,
                          color: Colors.black54,
                          padding: const EdgeInsets.all(10),
                          child: const Text(
                            'I Like Potatoes And Oranges',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        )),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
