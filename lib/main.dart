import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Carrotitem> items = [];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));
    items.add(Carrotitem(title: 'ㅇㅇㅇㅇㅇ', address: '학굔데요?', price: 1000));

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('malbob narket'),
            backgroundColor: Colors.amber,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [for (var item in items) item],
            ),
          )),
    );
  }
}

class Carrotitem extends StatelessWidget {
  String title, address;
  int price;
  Carrotitem({
    required this.title,
    required this.address,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  const DecorationImage(image: AssetImage('imges/12312.jpg'))),
        ),
        Flexible(
          flex: 1,
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  address,
                  style: const TextStyle(decoration: TextDecoration.underline),
                ),
                Text('$price'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Icon(Icons.heart_broken), Text('12')],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
