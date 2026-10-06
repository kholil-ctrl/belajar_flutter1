  import 'package:flutter/material.dart';
  import 'package:belajar_flutter1/components/registration_info.dart';
  import 'package:belajar_flutter1/controllers/confirm_registration_controller.dart';
  import 'package:get/get.dart';

  class ConfirmRegistrationPage extends StatelessWidget {
    ConfirmRegistrationPage({super.key});

    final controller = Get.put(ConfirmRegistrationController());

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Confirm Registration")),
        body: Column(
          children: [
            RegistrationInfo(label: "Nama", value: controller.nama),
            RegistrationInfo(label: "Agama", value: controller.agama),
            RegistrationInfo(label: "Email", value: controller.email),
            RegistrationInfo(label: "No. WA", value: controller.noWa),
            RegistrationInfo(
              label: "Jenis Kelamin",
              value: controller.jenisKelamin,
            ),
            
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Oke"),
            ),
          ],
        ),
      );
    }
  }