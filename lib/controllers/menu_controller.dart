import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/constants/style.dart';
import 'package:flutter_structure/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = OverviewPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget _customIcon(IconData icon, String itemName) {
    if (isActive(itemName))
      return Icon(
        icon,
        size: 22,
        color: dark,
      );

    return Icon(
      icon,
      color: isHovering(itemName) ? dark : lightGrey,
    );
  }

  Widget returnIconFor(String itemName) {
    switch (itemName) {
      case OverviewPageRoute:
        return _customIcon(Icons.trending_up, itemName);
        break;
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, itemName);
        break;
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, itemName);
        break;
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, itemName);
        break;
      default:
        return _customIcon(CupertinoIcons.power, itemName);
        break;
    }
  }
}
