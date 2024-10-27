import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/User/request/request_controller.dart';
import 'package:project2/View/widget/shared/sharedtextformfield.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    RequestController controller = Get.put(RequestController());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            Column(
              children: [
                const Center(
                  child: CustomLargeText(
                    text: "Request",
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                SharedTextFormField(
                  text: const Text("Worker UserName"),
                  icon: FontAwesomeIcons.userCircle,
                  onChanged: (val) {},
                  mycontroller: controller.workerUsername,
                  validator: (val) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                SharedTextFormField(
                  text: const Text("Cost"),
                  icon: FontAwesomeIcons.wallet,
                  onChanged: (val) {},
                  mycontroller: controller.cost,
                  validator: (val) {},
                  isNumber: controller.isNumber,
                ),
                const SizedBox(
                  height: 10,
                ),
                SharedTextFormField(
                  
                  text: const Text("Service"),
                  icon: FontAwesomeIcons.tools,
                  onChanged: (val) {},
                  mycontroller: controller.service,
                  validator: (val) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomButton(
                  text: "Order",
                  onPressed: () {
                    controller.goTocheckout();
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
