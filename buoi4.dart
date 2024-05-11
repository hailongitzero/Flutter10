///Bài 1:
///Viết hàm tính luỹ thừa của một số
///Yêu cầu: Phải dùng vòng lặp
///
///Bài 2:
///Viết hàm kiểm tra có phải là một tam giác hay không tham số hàm là độ dài của 3 cạnh
///
/// Bài 3:
/// Cho một ma trận cỡ (n-row * m-column) (n,m thuoc N*, n&m > 0) -> in ra các số nếu là số chẵn
/// 2 * 3
/// [1,2,3]
/// [3,4,5]
///
/// ==================================HIGHLIGHT==================================
/// TÌM HIỂU THÊM,
///typeDef
void main() {
  // demoSwitchCase();
  // demoTryCatch();
  Student long = Student("long", 22, 'd683dc05-a9ce-4654-8a73-adaa1a67df38');
  print(long);
}

/// switch-case

enum DayValue {
  ///The weekend
  Fri,
  Sa,
  Sun,
}

void demoSwitchCase() {
  DayValue currentDay = DayValue.Fri;
  int intValue = 2;
  if (currentDay == DayValue.Sa) {
    print('currentDay : ${currentDay}');
  } else {
    print('currentDay : ${currentDay}');
  }

  switch (intValue) {
    case (const (8 / 4)):
      break;
    case (const (16 / 8)):
      print('currentDay Sunday');
    default:
      print('unknown');
  }
}

///Try-catch
void demoTryCatch() {
  int firstNum = 4;
  dynamic secondNum = '2';
  try {
    double result = firstNum / secondNum;
    print(result);
    print('valueAble1');
  } catch (dynamicException) {
    print('null value $dynamicException');
    print('valueAble2');
  }

  ///
  try {
    dynamic secNum = '3';
    var res = 12 ~/ 0;
    print("The result is $res");
  } on IntegerDivisionByZeroException {
    // throw FormatException('thiếu kìa');
    assert(null != null);
    print('under throw');
  } catch (e) {
    print("Unknown exception: $e");
  } finally {
    // Always clean up, even if an exception is thrown.
    print("finally");
  }
}

/// Đối tượng (object)
/// in dart everything is object

//class TenDoiDuong {
// int tuoi;
// String name; => thuộc tính
// constructor: khởi tạo cho đối tượng
// void nameFunc() { => phương thức
// }
//}

class Student {
  String name; //thuoc tinh
  String id;
  int age;

  ///Constructor
  Student(this.name, this.age, this.id);

  @override
  String toString() {
    return 'Student ne: {name: $name, id: $id, age: $age}';
  } //this được hiểu là chính đối tượng bọc bên ngoài this

  void hocBai() {
    print('studying');
  }
}

class AnotherStudent {
  String? email;
  String hobby;

  // AnotherStudent(this.email, this.hobby);
  AnotherStudent(this.email, {required this.hobby});
}

///tạo đối tượng người
///tên, tuổi, địa chỉ
///phương thức: trả ra tuổi của người đó -> 18, thông tin người đó in ra các thông tin
///viết hàm trả ra những người trên 20 tuổi

///BTVN
//1. Viết hàm kiểm tra một danh sách kiểu số nguyên để lưu trữ số CMND/CCCD nếu danh sách chứa số
// trùng nhau sẽ sai vì cmnd/cccd chỉ có một

//3. Viết hàm để trả ra String nhưng chỉ toàn viết hoa (input: hnMs -> HNMS) // tìm cách biến
// chuỗi thành chuỗi in hoa cần tìm ở bên ngoài google

//2.Tạo Đối Tượng Bàn bao gồm các thuộc tính: nơi sản xuất, chất liệu, giá thành, id bàn(chỉ số
//1. id này để phân biệt các bàn với nhau riêng biệt giống cmnd)
//2. Viết phương thức trả ra thông tin của bàn
//3. Viết phương thức để kiểm tra 2 tham số đầu vào là 2 đối tượng bàn khác nhau in ra bàn có giá
// tiền cao hơn
