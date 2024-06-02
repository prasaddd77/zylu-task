import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:riverpod/riverpod.dart';
import '../../Model/Employee.dart';

class EmployeeVM extends StateNotifier<List<Employee>> {
  EmployeeVM() : super([]);

  void loadData() async {
    var content = await rootBundle.loadString('assets/employees.json');
    final List<dynamic> data = await jsonDecode(content);

    state = data.map(
      (e) {
        return Employee.fromMap(e);
      },
    ).toList();
  }
}
