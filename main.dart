void main() {
  print(binhPhuong(3));
  print(binhPhuong('abc'));
  ageOK(22);
}

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
