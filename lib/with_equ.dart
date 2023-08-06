import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class WithEqu extends StatefulWidget {
  const WithEqu({Key? key}) : super(key: key);

  @override
  State<WithEqu> createState() => _WithEquState();
}

class _WithEquState extends State<WithEqu> {
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
                phoneWidget(
                    phoneName: iphone.phoneName, phoneImage: iphone.phoneImage),
                const Spacer(),
                phoneWidget(
                  phoneImage: iphone2.phoneImage,
                  phoneName: iphone2.phoneName,
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

  phoneWidget({
    required phoneImage,
    required phoneName,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image.network(
            phoneImage,
            width: 170,
            height: 300,
            fit: BoxFit.contain,
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
      ),
    );
  }
}

class Phone extends Equatable {
  final String phoneName;
  final String phoneImage;

  const Phone({
    required this.phoneName,
    required this.phoneImage,
  });

  @override
  List<Object?> get props => [phoneName, phoneImage];
}
