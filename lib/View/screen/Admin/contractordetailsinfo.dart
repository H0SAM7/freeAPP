import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/Admin/contractordetalisinfo_controller.dart';
import 'package:project2/View/widget/admin/custumworkercontainer.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';

class ContractorDetailsInfo extends StatelessWidget {
  const ContractorDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    ContractorDetailsInfoController controller =
        Get.put(ContractorDetailsInfoController());
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 30),
      child: ListView(
        children: [
          const Center(
            child: CustomLargeText(
              text: "Contractor Information",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              CustomWorkerAndContractorcontainer(
                text: '${controller.contractorModel.userName}',
              ),
              CustomWorkerAndContractorcontainer(
                text: '${controller.contractorModel.firstName}',
              ),
              CustomWorkerAndContractorcontainer(
                text: '${controller.contractorModel.contactorEmial}',
              ),
              CustomWorkerAndContractorcontainer(
                  text: '${controller.contractorModel.license}'),
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
                controller.acceptContrctorWithInSystem();
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
                controller.deleteContractorFormSystem();
              },
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    ));
  }
}
