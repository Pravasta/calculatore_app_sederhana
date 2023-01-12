import 'package:calculator_app/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'home_view.dart';

class Result extends StatelessWidget {
  Result({super.key});

  final resultC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Angka(text: '${resultC.angkaPertama}'),
          Angka(text: '${resultC.operator}'),
          Angka(text: '${resultC.angkaKedua}'),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: Colors.white)),
            ),
          ),
          Angka(text: '${resultC.hasilHitung}'),
        ],
      ),
    );
  }
}
