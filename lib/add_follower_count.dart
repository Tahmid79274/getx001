import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'store_controller.dart';

class AddFollowerCount extends StatelessWidget {
  AddFollowerCount({Key? key}) : super(key: key);
  final storeController = Get.find<StoreController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Follower Count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          storeController.updateFollowerCount();
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
      ),
    );
  }
}
