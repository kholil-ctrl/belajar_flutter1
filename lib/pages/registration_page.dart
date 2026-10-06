import 'package:flutter/material.dart';
import 'package:belajar_flutter1/routes.dart';
import 'package:belajar_flutter1/components/registration_textfield.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtNoWa = TextEditingController();

    RxString jenisKelamin = ''.obs;
    RxString agama = ''.obs;

    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "Registration Form",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                RegistrationTextfield(
                  txtController: txtNama,
                  myHint: "input name",
                ),

                SizedBox(height: 12),

                DropdownButtonFormField<String>(
                  value: agama.value.isEmpty ? null : agama.value,
                  decoration: InputDecoration(
                    hintText: "Pilih agama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(value: "Islam", child: Text("Islam")),
                    DropdownMenuItem(value: "Kristen", child: Text("Kristen")),
                    DropdownMenuItem(value: "Katolik", child: Text("Katolik")),
                    DropdownMenuItem(value: "Hindu", child: Text("Hindu")),
                    DropdownMenuItem(value: "Buddha", child: Text("Buddha")),
                    DropdownMenuItem(value: "Konghucu", child: Text("Konghucu")),
                  ],
                  onChanged: (value) {
                    agama.value = value!;
                  },
                ),

                SizedBox(height: 12),

                RegistrationTextfield(
                  txtController: txtEmail,
                  myHint: "input email",
                ),

                SizedBox(height: 12),

                RegistrationTextfield(
                  txtController: txtNoWa,
                  myHint: "input no WhatsApp",
                  onlyNumber: true,
                ),

                SizedBox(height: 12),

                DropdownButtonFormField<String>(
                  value: jenisKelamin.value.isEmpty
                      ? null
                      : jenisKelamin.value,
                  decoration: InputDecoration(
                    hintText: "Pilih jenis kelamin",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: "Laki-laki",
                      child: Text("Laki-laki"),
                    ),
                    DropdownMenuItem(
                      value: "Perempuan",
                      child: Text("Perempuan"),
                    ),
                  ],
                  onChanged: (value) {
                    jenisKelamin.value = value!;
                  },
                ),

                SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(
                        Routes.confirm_registration,
                        arguments: {
                          'name': txtNama.text.toString(),
                          'jenis_kelamin': jenisKelamin.value,
                          'agama': agama.value,
                          'email': txtEmail.text.toString(),
                          'no_wa': txtNoWa.text.toString(),
                        },
                      );
                    },
                    child: Text("Send"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}