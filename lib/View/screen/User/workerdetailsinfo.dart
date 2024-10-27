import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/User/home/userworkerdetailsinfo_controller.dart';
import 'package:project2/View/widget/User/userprofile/userimage.dart';


class UserWorkerDetailsInfo extends StatelessWidget {
  const UserWorkerDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    UserWorkerDetailsInfoController controller =
        Get.put(UserWorkerDetailsInfoController());
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Worker Information ",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 50),
                  child:
                      Align(alignment: Alignment.topLeft, child: UserImage()),
                ),
                const SizedBox(
                  width: 60,
                ),
                Column(
                  children: [
                    Text(
                      "${controller.workerModel!.firstName}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${controller.workerModel!.userName}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  const Icon(
                    Icons.email_outlined,
                    size: 29,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${controller.workerModel!.workerEmail}",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Reviews",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
