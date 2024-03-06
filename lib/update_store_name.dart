import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './store_controller.dart';

class UpdateStoreName extends StatelessWidget {
  const UpdateStoreName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storeController = Get.find<StoreController>();
    return Column(
      children: [
        RoundedInput(hintText: 'Store Name', controller: storeController.storeNameEditingController),
        const SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          storeController.updateStoreName(storeController.storeNameEditingController.text);
          Get.snackbar('Updated', 'Store name has been updated ton ${storeController.storeNameEditingController.text}',snackPosition: SnackPosition.BOTTOM);
        }, child: const Text('Update'))
      ],
    );
  }
}


class RoundedInput extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  RoundedInput({Key? key,required this.hintText,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(hintText: hintText),controller: controller,);
  }
}
