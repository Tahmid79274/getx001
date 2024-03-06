import 'package:get/get.dart';
import 'package:getx001/store_controller.dart';

class StoreBinding implements Bindings{

  @override
  void dependencies(){
    Get.lazyPut(() => StoreController());
  }
}