import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'store_reviews.dart';

class StoreController extends GetxController{
  final storeName = 'Thick Shage'.obs;
  final followerCount = 0.obs;
  final storeStatus = true.obs;
  final followerList = [].obs;
  final reviews = <StoreReviews>[].obs;
  final storeNameEditingController = TextEditingController();
  final reviewEditingController = TextEditingController();
  final followerEditingController = TextEditingController();
  final reviewNameController = TextEditingController();

  updateStoreName(String name){
    storeName(name);
  }

  updateFollowerCount(){
    followerCount(followerCount.value++);
  }

  updateStoreStatusOpen(bool isOpen){
    storeStatus(isOpen);
  }
}