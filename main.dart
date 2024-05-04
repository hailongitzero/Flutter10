void main() {
  getCircleInfo(5);
  print('==============');
  getCircleInfo(-5);
}

void getCircleInfo(double r) {
  late double chuVi;
  late double dienTich;
  const double PI = 3.141516;
  if (r <= 0) {
    print('NO CIRCLE');
  } else {
    chuVi = 2 * PI * r;
    dienTich = r * PI * r;
    print('chu vi la ${chuVi.toStringAsFixed(2)}');
    print('dien tich la ${dienTich.toStringAsFixed(2)}');
  }
}

//cách khai báo kiểu dữ liệu có thể null
//học toán tử
//học hàm (cơ bản)
//học qua if-else

void ageOK(int age) {
  if (age >= 18) {
    print("Da du 18 tuoi");
  } else {
    print("Chua du 18 tuoi");
  }
}

int? binhPhuong(dynamic so) {
  bool isOKArgument = (so is int) ? true : false;

  // if (isOKArgument == true) {
  // if (isOKArgument) {
  //   return so * so;
  // } else {
  //   return null;
  // }

  if (!isOKArgument) {
    return null;
  } else {
    return so * so;
  }

  // if 3 ... elseif 12... else...
}

/// Tham số
/// ... tenHame(KieuDuLieu tenThamSo, KieuDuLieu tenThamSo) {
///...
///}

///Gọi hàm tenHam(...);

void justPrint(String name, int age) {
  print('Your name is $name and age is $age');
}

///không trả về gì hết
///void tenHam() {
///}

// có dữ liệu trả về,
///KieuDuLieu tenHam() {
///return giaTriCuaKieuDuLieu
///}

int getAge() {
  return 3 * 2;
}
