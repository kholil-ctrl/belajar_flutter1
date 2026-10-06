import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:belajar_flutter1/components/custom_textfield.dart';
import 'package:belajar_flutter1/components/custom_button.dart';
import 'controllers/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  KalkulatorPage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Kalkulator Page"),
      ),
      body: Column(
        children: [
          CustomTextfield(
            myHint: "Masukkan Angka 1",
            txtController: txtangka1,
          ),

          CustomTextfield(
            myHint: "Masukkan Angka 2",
            txtController: txtangka2,
          ),

          CustomButton(
            text: "Tambah",
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka 1 dan Angka 2 harus diisi",
                  snackPosition: SnackPosition.BOTTOM,
                );
                return;
              }

              controller.tambah(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
          ),

          CustomButton(
            text: "Kurang",
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka 1 dan Angka 2 harus diisi",
                  snackPosition: SnackPosition.BOTTOM,
                );
                return;
              }

              controller.kurang(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
          ),

          CustomButton(
            text: "Kali",
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka 1 dan Angka 2 harus diisi",
                  snackPosition: SnackPosition.BOTTOM,
                );
                return;
              }

              controller.kali(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
          ),

          CustomButton(
            text: "Bagi",
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka 1 dan Angka 2 harus diisi",
                  snackPosition: SnackPosition.BOTTOM,
                );
                return;
              }

              controller.bagi(
                double.parse(txtangka1.text),
                double.parse(txtangka2.text),
              );
            },
          ),

          const SizedBox(height: 20),

          Obx(
            () => Text(
              "Hasil : ${controller.hasilHitung}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}