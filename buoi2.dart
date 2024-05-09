/// ====Optional parameter in dart======
///default value parameter : Hàm có tham số giá trị mặc định
/// Kiểu_trả_về_hoặc_không (void - int, map,...) tên_hàm({khai báo tham số kèm giá trị mặc định}) {
/// .... //return || void
/// }
int getSumWithDefaultValPara(String secondParam, {int firstNum = 2}) {
  return 2 + firstNum;
}

int getSum(int firstNum) {
  return 2 + firstNum;
}

///Required parameter
void getInformationPeople({
  required String fullName,
  bool? isCertificated,
  String lan = 'vi',
}) {
  String result = '';
  if (isCertificated == null) {
    result = 'Do not know about $fullName speak $lan';
  } else {
    if (isCertificated == true) {
      result = '$fullName Certificated speak $lan';
    } else {
      //result = false
      result = '$fullName Not Certificated speak $lan';
    }
  }
  print(result);
}

///Tham số không bắt buộc 1: can null, 2:have default value

///Arrow function
void getName() => print('ARRROW FUNC demo');

int getSumOf3Nums({int firstNum = 1, int secNum = 2, int third = 3}) => firstNum + secNum + third;

void main() {
  ///Func
  getInformationPeople(fullName: 'Le Quang Dao');
  getInformationPeople(fullName: 'Le Quang Dao1', isCertificated: true);
  getInformationPeople(fullName: 'Le Quang Dao2', isCertificated: false);
  getInformationPeople(
    fullName: 'Le Quang Dao3',
    isCertificated: null,
    lan: 'en',
  );
  getName();
  print('${getSumOf3Nums()}');

  late int? notHaveValueYet;
  late int? notHaveValueYet2;
  notHaveValueYet = convertFromString(value: '33');
  notHaveValueYet2 = convertFromString(value: '//33');
  print('result after change ${3 + (notHaveValueYet ?? 0)}');
  print('result after change ${3 + (notHaveValueYet2 ?? 0)}');

  String result = '';
  result.length;

  String resultAfterChange = convertFromBool(value: false);
  convertFromBool(value: false).length;

  ///Enum
  const String muaMua = 'muaMua';
  const String muaKho = 'muaKho';

  bool isMuaKho = false; //now -> mua mua

  MuaTrongNam muaTrongNam;

  muaTrongNam = MuaTrongNam.muaDong;

  /// X,H,T,D
  if (muaTrongNam == MuaTrongNam.muaThu) {
    //T
    //use backgroundcolor muathu
  } else if (muaTrongNam == MuaTrongNam.muaDong) {
    //D
  } else {
    //X,H
  }

  getStatusDay(muaTrongNam: MuaTrongNam.muaDong, dayOfWeek: DayOfWeek.Nam);
}

/// viết hàm chuyển đổi string thành int, bool thành String
/// input: '3' -> 3
/// true -> 'true'

String convertFromBool({bool value = false}) {
  return value.toString();
}

int? convertFromString({required String value}) {
  return int.tryParse(value);
}

///Advance Function, Arrow Function
///Enum

///Viết hàm -> in ra thứ mấy mùa gì ở thời điểm hiện tại, Vd: thứ 3 mùa đông
///Yêu cầu: phải dùng enum cho cả thứ và mùa

enum MuaTrongNam { muaXuan, muaHa, muaThu, muaDong }

enum DayOfWeek { Hai, Ba, Bon, Nam, Sau, Bay, Cn }

void getStatusDay({
  required MuaTrongNam muaTrongNam,
  required DayOfWeek dayOfWeek,
}) {
  String dayOfWeekResult = '';
  String muaTrongNamResult = '';

  ///handle get mùa
  if (muaTrongNam == MuaTrongNam.muaDong) {
    muaTrongNamResult = 'mùa đông';
  } else if (muaTrongNam == MuaTrongNam.muaHa) {
    muaTrongNamResult = 'mùa hạ';
  } else if (muaTrongNam == MuaTrongNam.muaThu) {
    muaTrongNamResult = 'mùa thu';
  } else {
    muaTrongNamResult = 'mùa xuân';
  }

  ///handle get ngày
  if (dayOfWeek == DayOfWeek.Hai) {
    dayOfWeekResult = '2';
  } else if (dayOfWeek == DayOfWeek.Ba) {
    dayOfWeekResult = '3';
  } else if (dayOfWeek == DayOfWeek.Bon) {
    dayOfWeekResult = '4';
  } else if (dayOfWeek == DayOfWeek.Nam) {
    dayOfWeekResult = '5';
  } else if (dayOfWeek == DayOfWeek.Sau) {
    dayOfWeekResult = '6';
  } else if (dayOfWeek == DayOfWeek.Bay) {
    dayOfWeekResult = '7';
  } else {
    dayOfWeekResult = 'CN';
  }

  print('Hom nay thu $dayOfWeekResult -  $muaTrongNamResult');
  demoNullSafety();
}

///NULL-SAFETY
void demoNullSafety() {
  print('---------------GO TO NULL SAFETY---------------');
  String? variableCanNull;
  String varCanNotNull = '';

  print(true);
}

///Btvn
///Viết một hàm trả về thông tin ngày hôm đó (.....) và mặc định đang là năm 2024 (use default para), tháng phải là enum
///-> Thứ ... - ngày ... - năm và có || (không phải) năm nhuận

///Viết hàm kiểm tra số chẵn hay lẻ (input: dynamic param) -> hợp lệ || Có || Không
///
