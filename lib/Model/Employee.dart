class Employee {
  final int id;
  final String name;
  final bool isActive;
  final int yearsActive;

  Employee(
      {required this.id,
      required this.name,
      required this.yearsActive,
      required this.isActive});

  factory Employee.fromMap(Map<String, dynamic> mp) => Employee(
      id: mp["id"],
      name: mp["name"],
      yearsActive: mp["yearsActive"],
      isActive: mp["isActive"]);
}
