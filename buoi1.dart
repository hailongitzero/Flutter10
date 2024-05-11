import 'dart:ffi';

void main() {
  //int: so nguyen, String: chuoi, map: key-value, double : so thuc,  List: danh sach, dynaic
  //final, const, late, var,
  //how to create name for a variable : type nameVar; -> lowercase
  int tuoi = 12;
  print(tuoi.isOdd); //le? -> false

  dynamic anotherTuoi = 12;
  anotherTuoi as int;
  anotherTuoi;

  List<String> students = ["hoang", "huy", "long", '3'];

  int x = 4;

  double scoreMath = 7.4;

  String name = "huy hoang";
  String nameAnother = 'huy hoang';

  Map demoMapValue = {
    "name": "huy hoang",
    1: "2",
    {"name": "huy"}: 3,
  };

  Map<String, String> demoValueMapWithGenericType = {
    ///Generictype
    "name": "huy",
  };

  int caculatedAge = (x + 2) * 3;
  // int caculatedAge2 = (x /4 ) + 3;

  int timeGameToMinutes = 60;

  bool isTimeOver = false;

  bool isEnoughAge = false;
  isEnoughAge = true;

  print("hello huy hoang ${caculatedAge}");
  print('demo ! operator ${!isEnoughAge}');
  int a = 3;
  a++;
  a += 1;
  a = a + 1; // a+=1 // a = a + 1
  ++a;
  a--;

  dynamic age = 3;
  List<dynamic> studentsAnother = ["hjuy", 3, (3 + 2)];

  print(age);
  age as int;

  dynamic data = 30;
  data as int;

  print('dong nay ${3 is int}');

  bool isInt = (3 is int); //isInt = true;

  print('---');

  print(age);

  ////
}

// unary postfix	expr++    expr--    ()    []    ?[]    .    ?.    !	None
// unary prefix	-expr    !expr    ~expr    ++expr    --expr      await expr	None
// multiplicative	*    /    %  ~/	Left
// additive	+    -	Left
// shift	<<    >>    >>>	Left
// bitwise AND	&	Left
// bitwise XOR	^	Left
// bitwise OR	|	Left
// relational and type test	>=    >    <=    <    as    is    is!	None
// equality	==    !=	None
// logical AND	&&	Left
// logical OR	||	Left
// if-null	??	Left
// conditional	expr1    ?    expr2    :    expr3	Right
// cascade	..    ?..	Left
// assignment	=    *=    /=   +=   -=   &=   ^=   etc.	Right
// spread (See note)
