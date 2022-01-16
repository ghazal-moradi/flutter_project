import 'package:flutter/material.dart';
import 'package:flutter_application_1/second_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<String> itemsTitle = [
    'کیف و کفش',
    'لباس مردانه',
    'لباس زنانه',
    'لباس پسرانه',
    'لباس دخترانه',
    'لباس بچگانه',
    'کیف مردانه',
    'کت و شلوار',
    'کمربند های چرم',
    'لوازم الکترونیکی',
  ];
  final List<String> itemsImage = [
    'assets/images/kif_kafsh.jpg',
    'assets/images/lebas_mardane.jpg',
    'assets/images/lebas_zanane.jpg',
    'assets/images/lebas_pesarane.jpg',
    'assets/images/lebas_dokhtrane.jpg',
    'assets/images/lebas_bachegane.jpg',
    'assets/images/kif_mardane.jpg',
    'assets/images/kot_shalvar.jpg',
    'assets/images/kamarband_charm.jpg',
    'assets/images/lavazem_elctroniki.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          'غزل مرادی',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        )),
        body: Column(
          children: [
            Text(
              'به فروشگاه خوش آمدید',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(10),
                    color: Colors.blue.shade100,
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(
                          title: itemsTitle[index],
                          image: itemsImage[index],
                        ),));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.asset(itemsImage[index]),
                          ),
                          Text(
                            itemsTitle[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
