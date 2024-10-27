import 'package:get/get.dart';
import 'package:project2/Model/model/Worker/workermodel.dart';

class UserWorkerDetailsInfoController extends GetxController {
  WorkerModel? workerModel;

  intialWorkerData() {
    workerModel = Get.arguments['WorkerModel'];
  }

  @override
  void onInit() {
    intialWorkerData();
    super.onInit();
  }
}
