import 'package:fluttemp/Model/Employee.dart';
import 'package:fluttemp/Utils/constants/app_colors.dart';
import 'package:fluttemp/View/shared/app_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EmployeeTile extends StatelessWidget {
  EmployeeTile({super.key, required this.emp});
  Employee emp;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 10,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColorsTheme.dark().bgInput),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppText.defaultText(
            emp.id.toString(),
            context: context,
            size: 20,
            color: emp.isActive && emp.yearsActive > 5
                ? Colors.green
                : Colors.white,
          ),
          AppText.defaultText(
            emp.name.toString(),
            context: context,
            size: 20,
            color: emp.isActive && emp.yearsActive > 5
                ? Colors.green
                : Colors.white,
          ),
          AppText.defaultText(
            emp.yearsActive.toString(),
            context: context,
            size: 20,
            color: emp.isActive && emp.yearsActive > 5
                ? Colors.green
                : Colors.white,
          )
        ],
      ),
    );
  }
}
