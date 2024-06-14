import 'package:fluttemp/Model/Employee.dart';
import 'package:fluttemp/ViewModel/someClass_VM/someclass.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final employeeProvider =
    StateNotifierProvider<EmployeeVM, List<Employee>>((ref) => EmployeeVM());

