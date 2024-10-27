import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/User/home/home_controller.dart';

class HomeSearchandName extends StatelessWidget {
  const HomeSearchandName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        "Fixme".tr,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      IconButton(
          onPressed: () {
            controller.goToSearchPage();
          },
          icon: const Icon(
            Icons.search,
            size: 37,
          ))
    ]);
  }
}
