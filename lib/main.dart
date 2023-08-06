import 'package:flutter/material.dart';

import 'phone_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Phone samsung = Phone(
    phoneName: 'Samsung S20 FE 5G',
    phoneImage:
        'https://files.refurbed.com/ii/samsung-galaxy-s20-fe-5g-1602757103.jpg',
  );
  final Phone iphone = Phone(
    phoneName: 'Iphone 122',
    phoneImage:
        'https://www.backmarket.de/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D828/https://d1eh9yux7w8iql.cloudfront.net/product_images/418120_98f32291-8c1e-452f-b0cb-2bcad0652b2f.jpg',
  );
  final Phone iphone3 = Phone(
    phoneName: 'Iphone 122',
    phoneImage:
        'https://www.backmarket.de/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D828/https://d1eh9yux7w8iql.cloudfront.net/product_images/418120_98f32291-8c1e-452f-b0cb-2bcad0652b2f.jpg',
  );
  final Phone iphone2 = Phone(
    phoneName: 'Iphone 122',
    phoneImage:
        'https://www.backmarket.de/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D828/https://d1eh9yux7w8iql.cloudfront.net/product_images/418120_98f32291-8c1e-452f-b0cb-2bcad0652b2f.jpg',
  );

  comparePhone(BuildContext context) {
    bool what = iphone == iphone2;

    print("iphone ${iphone.hashCode}");
    print("iphone2 ${iphone2.hashCode}");
    print("iphone3 ${iphone3.hashCode}");
    print("samsung ${samsung.hashCode}");
    print("what $what");
    if (iphone == iphone2) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("YES, They are EQUAL")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("NO, They are not EQUAL")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(child: Text('Equatable Example')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            phoneWidget(
                phoneName: iphone.phoneName, phoneImage: iphone.phoneImage),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                comparePhone(context);
              },
              child: const Text("Compare"),
            ),
            phoneWidget(
              phoneImage: iphone2.phoneImage,
              phoneName: iphone2.phoneName,
            ),
          ],
        ),
      ),
    );
  }

  phoneWidget({
    required phoneImage,
    required phoneName,
  }) {
    return Column(
      children: [
        Image.network(
          phoneImage,
          height: 200,
        ),
        const SizedBox(height: 5),
        Text(
          phoneName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
