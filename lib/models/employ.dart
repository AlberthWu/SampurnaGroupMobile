class Employee {
  final int employId;
  final String category;
  final String employeeName;
  final String occupation;
  final String grouppt;
  final String imageURL;
  bool isActivated;
  bool isNonactive;

  Employee(
      {required this.employId,
        required this.category,
        required this.employeeName,
        required this.occupation,
        required this.grouppt,
        required this.imageURL,
        required this.isActivated,
        required this.isNonactive});

  //List of Employee data
  static List<Employee> employeeList = [
    Employee(
        employId: 0,
        category: 'Employee',
        employeeName: 'No Name',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-one.png',
        isActivated: true,
        isNonactive: false),
    Employee(
        employId: 1,
        category: 'Employee',
        employeeName: 'Philodendron',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-two.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 2,
        category: 'Employee',
        employeeName: 'Beach Daisy',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-three.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 3,
        category: 'Head Office',
        employeeName: 'Big Bluestem',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-one.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 4,
        category: 'Head Office',
        employeeName: 'Big Bluestem',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-two.png',
        isActivated: true,
        isNonactive: false),
    Employee(
        employId: 5,
        category: 'Head Office',
        employeeName: 'Meadow Sage',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-three.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 6,
        category: 'Pool',
        employeeName: 'Plumbago',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-one.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 7,
        category: 'Pool',
        employeeName: 'Tritonia',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-three.png',
        isActivated: false,
        isNonactive: false),
    Employee(
        employId: 8,
        category: 'Pool',
        employeeName: 'Tritonia',
        occupation: 'Driver',
        grouppt: 'PT Alam Sampurna Makmur',
        imageURL: 'assets/images/truck-one.png',
        isActivated: false,
        isNonactive: false),
  ];

  //Get the activated items
  static List<Employee> getActivatedEmployee(){
    List<Employee> travelList = Employee.employeeList;
    return travelList.where((element) => element.isActivated == true).toList();
  }

  //Get the nonactive items
  static List<Employee> addedToNonactive(){
    List<Employee> selectedEmployee = Employee.employeeList;
    return selectedEmployee.where((element) => element.isNonactive == true).toList();
  }
}