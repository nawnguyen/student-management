class Student {
  String name;
  String code;

  Student({
    required this.name,
    required this.code,
  });

  String getInfo() {
    // DateTime date = DateTime.now(); lấy ngày giờ hiện tại
    return 'Tên SV: ${name}, MSV: ${code}';
  }

  void printInfo() {
    print('Tên SV: ${name}, MSV: ${code}');
  }
}

var students = [
  Student(name: 'Trần Việt Trinh', code: '1501518'),
  Student(name: 'Nguyễn Thị Trang', code: '1501509'),
  Student(name: 'Nguyễn Thị An Quỳnh', code: '1501424'),
  Student(name: 'Nguyễn Ngọc Minh', code: '1401405'),
  Student(name: 'Nguyễn Tiến Lực', code: '1401387'),
  Student(name: 'Nguyễn Thị Phương', code: '1401235'),
  Student(name: 'Phạm Đức Thắng', code: '1701057'),
  Student(name: 'Nguyễn Mai  Linh', code: '1501062'),
  Student(name: 'Đào Ngọc Toàn', code: '1601546'),
];

// void main(List<String> args) {
//   var keyword = args[0].toLowerCase();

//   for (var i = 0; i <= students.length - 1; i++) {
//     var student = students[i];
//     if (student.name.toLowerCase().contains(keyword)) {
//       // print(student.getInfo());
//       student.printInfo();
//     } else if (student.code.toLowerCase().contains(keyword)) {
//       // print(student.getInfo());
//       student.printInfo();
//     } else {
//       print('Không có kết quả');
//     }
//   }
// }
