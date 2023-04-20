import 'package:flutter/material.dart';
import 'package:flutter_application_carrot/detail_page.dart';

import 'carrot_item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Carrotitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 2000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 3000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 4000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 5000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 6000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 7000));

    return MaterialApp(
      home: HomePage(items: items),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.items,
  });

  final List<Carrotitem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('malbob narket'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              for (var item in items)
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(price: item.price),
                          ));
                    },
                    child: item)
            ],
          ),
        ));
  }
}
