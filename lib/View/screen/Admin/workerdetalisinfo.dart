import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/Admin/workerdetailsinfo_controller.dart';
import 'package:project2/View/widget/admin/custumworkercontainer.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';

class WorkerDetailsInfo extends StatelessWidget {
  const WorkerDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    WorkerDetailsInfoController controller =
        Get.put(WorkerDetailsInfoController());
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 30),
      child: ListView(
        children: [
          const Center(
            child: CustomLargeText(
              text: "Worker Information",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CustomWorkerAndContractorcontainer(
                text: '${controller.workerModel.firstName}',
              ),
              CustomWorkerAndContractorcontainer(
                text: '${controller.workerModel.userName}',
              ),
              CustomWorkerAndContractorcontainer(
                text: '${controller.workerModel.workerEmail}',
              ),
              CustomWorkerAndContractorcontainer(
                  text: '${controller.workerModel.workerCategories}'),
              CustomWorkerAndContractorcontainer(
                  text: '${controller.workerModel.license}'),
              CustomWorkerAndContractorcontainer(
                  text: '${controller.workerModel.contactorEmail}'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CustomButton(
              text: 'Accept',
              onPressed: () {
                controller.acceptWorkerWithinSystem();
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CustomButton(
              text: 'Delete',
              onPressed: () {
                controller.deletWorker();
              },
            ),
          ),
          const SizedBox(
            height: 90,
          )
        ],
      ),
    ));
  }
}
