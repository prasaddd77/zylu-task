import 'dart:developer';
import 'package:fluttemp/Utils/constants/app_constants.dart';
import 'package:fluttemp/Utils/provider/app_providers.dart';
import 'package:fluttemp/View/Pages/HomeScreen/employee_tile.dart';
import 'package:fluttemp/View/shared/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget {
  Home({super.key});

  final AppColorsTheme _appColorsTheme = AppColorsTheme.dark();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(employeeProvider.notifier);
    prov.loadData();
    return SafeArea(
      child: Scaffold(
          backgroundColor: _appColorsTheme.bgColor,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppText.subtitleDefault('ID', context: context),
                    AppText.subtitleDefault('Name', context: context),
                    AppText.subtitleDefault('Active Years', context: context)
                  ],
                ),
                Expanded(
                  child: Consumer(
                    builder: (context, ref, child) {
                      final employees = ref.watch(employeeProvider);
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: employees.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EmployeeTile(emp: employees[index]),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          )),
    );
  }
}
