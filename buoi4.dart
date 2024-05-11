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
  demoTryCatch();
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
