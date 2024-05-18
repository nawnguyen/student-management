import 'dart:convert';
import 'dart:io';
import 'student.dart';

void main(List<String> args) async {
  while (true) {
    print('\nMenu:');
    print('1. Hiển thị danh sách');
    print('2. Thêm sinh viên');
    print('3. Xóa sinh viên');
    print('4. Tìm sinh viên');
    print('5. Sửa sinh viên');

    stdout.write('Nhập lựa chọn: ');

    var inputString = stdin.readLineSync(encoding: utf8);
    var selectedNumber = double.parse(inputString!);
    if (selectedNumber == 1) {
      students.forEach((student) {
        print('Tên: ${student.name}, Mã SV: ${student.code}');
      });
    }
    if (selectedNumber == 2) {
      stdout.write('Nhập họ tên: ');
      var name = stdin.readLineSync(encoding: utf8);
      stdout.write('Nhập mã sinh viên: ');
      var code = stdin.readLineSync(encoding: utf8);
      students.add(Student(name: name!, code: code!));
    }
    if (selectedNumber == 3) {
      stdout.write('Nhập mã sinh viên cần xóa: ');
      var codeToDelete = stdin.readLineSync(encoding: utf8);
      students.removeWhere((student) => student.code == codeToDelete);
    }
    if (selectedNumber == 4) {
      stdout.write('Nhập từ khóa: ');
      var keyword = stdin.readLineSync(encoding: utf8);
      var searchResults = students.where((student) =>
          student.name.toLowerCase().contains(keyword!.toLowerCase()) ||
          student.code.toLowerCase().contains(keyword.toLowerCase()));

      if (searchResults.isNotEmpty) {
        print('Kết quả tìm kiếm: ');
        searchResults.forEach((student) {
          print('Tên: ${student.name}, Mã SV: ${student.code}');
        });
      } else {
        print('Không tìm thấy sinh viên nào phù hợp với từ khóa "$keyword".');
      }
    }
    if (selectedNumber == 5) {
      stdout.write('Nhập MSV: ');
      var msv = stdin.readLineSync(encoding: utf8);

      // Tìm sinh viên có mã sinh viên trùng với mã đã nhập
      var studentToEdit = students.firstWhere((student) => student.code == msv,
          orElse: () => null!);

      if (studentToEdit != null) {
        print('Sinh viên cần sửa:');
        print('Tên: ${studentToEdit.name}, Mã SV: ${studentToEdit.code}');

        stdout.write('Nhập tên mới: ');
        var newName = stdin.readLineSync(encoding: utf8);

        // Cập nhật tên của sinh viên
        studentToEdit.name = newName!;

        print('Đã cập nhật thông tin sinh viên.');
      } else {
        print('Không tìm thấy sinh viên với MSV là $msv');
      }
    }
  }
}
// hiển thị tên vs msv trùng vs msv vừa tìm
// hiển thị nhập tên cần sửa
// lưu vào mảng
// students.add(Student(name: 'bla', code: 'sdfghj'));
// // 1. đọc tên từ bàn phím
// var name = stdin.readLineSync();
// var code = stdin.readLineSync();

// // 2. thêm phần tử vào mảng với tên vừa nhập
// students.add(Student(name: name!, code: code!));
// students.forEach((student) {
//   print('Tên: ${student.name}, MSV: ${student.code}');
// });

// students.removeAt(7);
// var filteredStudents = students.where((element) => element.code == '1501062');
// filteredStudents.forEach((ele) {
//   print('Tên: ${ele.name}, MSV: ${ele.code}');
// });

// Mở app lên, hiển thị:
// [App] Menu:
// [App] 1. Hiển thị danh
// [App] 2. Thêm sinh viên
// [App] 3. Xóa sinh viên

// Nếu muốn hiển thị danh sách sinh viên => gõ 1 => enter
// Hiển thị danh sách các sinh viên hiện tại đang có

// Nếu muốn thêm sinh viên => gõ 2 => enter
// Hiển thị:
// [App] Tên sinh viên:
// [User] Sau khi gõ tên sinh viên => enter
// Hiển thị:
// [App] Mã sinh viên:
// [User] Sau khi gõ mã sinh viên => enter
// Thêm sinh viên vào danh sách
// Hiển thị danh sách mới

// Nếu muốn xóa sinh viên => gõ 3
// Nhập mã sinh viên: (chờ nhập mã sinh viên) => enter
// xóa học sinh có mã sinh viên vừa nhập ra khỏi danh sách
