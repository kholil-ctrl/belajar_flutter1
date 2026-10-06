import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String agama;
  late String email;
  late String noWa;
  late String jenisKelamin;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['name'];
    agama = arguments['agama'];
    email = arguments['email'];
    noWa = arguments['no_wa'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}