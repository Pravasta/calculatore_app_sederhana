import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'result.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            Result(),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 0.1, color: Colors.white)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.hapusAngka();
                  },
                  child: TombolClick(color: Colors.orange, text: 'C'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.buatNegarif();
                  },
                  child: TombolClick(color: Colors.orange, text: '+/-'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.deleteLastEntry();
                  },
                  child: TombolClick(color: Colors.orange, text: 'Del'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.pilihOperation('/');
                  },
                  child: TombolClick(color: Colors.orange, text: '/'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('7');
                  },
                  child: TombolClick(color: Colors.white, text: '7'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('8');
                  },
                  child: TombolClick(color: Colors.white, text: '8'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('9');
                  },
                  child: TombolClick(color: Colors.white, text: '9'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.pilihOperation('x');
                  },
                  child: TombolClick(color: Colors.orange, text: 'x'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('4');
                  },
                  child: TombolClick(color: Colors.white, text: '4'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('5');
                  },
                  child: TombolClick(color: Colors.white, text: '5'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('6');
                  },
                  child: TombolClick(color: Colors.white, text: '6'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.pilihOperation('-');
                  },
                  child: TombolClick(color: Colors.orange, text: '-'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('1');
                  },
                  child: TombolClick(color: Colors.white, text: '1'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('2');
                  },
                  child: TombolClick(color: Colors.white, text: '2'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('3');
                  },
                  child: TombolClick(color: Colors.white, text: '3'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.pilihOperation('+');
                  },
                  child: TombolClick(color: Colors.orange, text: '+'),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(100),
                  focusColor: Colors.white,
                  child: const SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(
                      Icons.flip_rounded,
                      color: Colors.orange,
                      size: 35,
                    ),
                  ),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addNumber('0');
                  },
                  child: TombolClick(color: Colors.white, text: '0'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.addDecimal();
                  },
                  child: TombolClick(color: Colors.white, text: '.'),
                ),
                InkWell(
                  focusColor: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    controller.perhitunganAngkat();
                  },
                  child: TombolClick(color: Colors.white, text: '='),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TombolClick extends StatelessWidget {
  TombolClick({
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  String text;

  Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 80,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 30),
        ),
      ),
    );
  }
}

class Angka extends StatelessWidget {
  Angka({Key? key, required this.text}) : super(key: key);

  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        // height: 300,
        width: Get.width,
        // color: Colors.white,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 40),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
