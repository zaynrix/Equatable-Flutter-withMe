import 'package:equatableflutterdev/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WithoutEqu extends StatefulWidget {
  const WithoutEqu({Key? key}) : super(key: key);

  @override
  State<WithoutEqu> createState() => _WithoutEquState();
}

class _WithoutEquState extends State<WithoutEqu> {
  String result = '';
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
  final Phone iphone2 = Phone(
    phoneName: 'Iphone 122',
    phoneImage:
        'https://www.backmarket.de/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D828/https://d1eh9yux7w8iql.cloudfront.net/product_images/418120_98f32291-8c1e-452f-b0cb-2bcad0652b2f.jpg',
  );
  final Phone iphone3 = Phone(
    phoneName: 'Iphone 122',
    phoneImage:
        'https://www.backmarket.de/cdn-cgi/image/format%3Dauto%2Cquality%3D75%2Cwidth%3D828/https://d1eh9yux7w8iql.cloudfront.net/product_images/418120_98f32291-8c1e-452f-b0cb-2bcad0652b2f.jpg',
  );

  comparePhone(BuildContext context) {
    bool isEqual = iphone == iphone2;

    if (kDebugMode) {
      print("Without");
      print("iphone  object/ ${iphone.hashCode}");
      print("iphone2 object/ ${iphone2.hashCode}");
      print("iphone3 object/ ${iphone3.hashCode}");
      print("samsung object/ ${samsung.hashCode}");
      print("isEqual $isEqual");
    }

    if (iphone == iphone2) {
      setState(() {});
      result = "EQUAL";
    } else {
      setState(() {});
      result = "NOT EQUAL";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                PhoneCardWidget(
                    title: iphone.phoneName, image: iphone.phoneImage),
                const Spacer(),
                PhoneCardWidget(
                  title: iphone2.phoneName,
                  image: iphone2.phoneImage,
                ),
              ],
            ),
            Text(result,
                style: TextStyle(
                    color: iphone != iphone2 ? Colors.white70 : Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 32)),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                comparePhone(context);
              },
              child: const Text("Compare",
                  style: TextStyle(color: Colors.black87)),
            ),
          ],
        ),
      ),
    );
  }
}

class Phone {
  final String phoneName;
  final String phoneImage;

  const Phone({
    required this.phoneName,
    required this.phoneImage,
  });
}
