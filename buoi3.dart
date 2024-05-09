///LOOP
///vòng lặp

// for loops
// while and do while loops
// break and continue
void main() {
  List<int> intList = [3, 4, 1, 2, 7, 10]; // length 6
  // demoForInLoop(intList);
  for (int index = 0; index < intList.length; index++) {
    if (index == 2) break;

    ///continue -> dùng khi không muốn lặp ở bước hiện tại <=> (điều kiện đề ra) và trở lại lặp ở
    /// bước tiếp theo
    ///break -> dừng lặp
    print('number at index ${index + 1} is : ${intList[index]}');
  }
  // demoDoWhileFtWhile(intList);
}

///for(giá_trị_khởi_tạo_cho_biến_điều_kiện ; điều_kiện_để_kết_thúc_vòng_lặp ;
///bước_nhảy_cho_biến_điều_kiện) {} /// =>
// List<int> intList = [3, 4, 1, 2];
//indexInArray : 0,1,2,3
// int firstNum = intList[0];
// for (int index = 0; index < intList.length; index++) {
// int indexForUser = index + 1;
// int currentValue = intList[index];
// print('number at index $indexForUser is : $currentValue');
// }
void demoForInLoop(List<int> intList) {
  ///way1
  for (int index = 0; index < intList.length; index += 2) {
    int indexForUser = index + 1;
    int currentValue = intList[index];
    print('number at index $indexForUser is : $currentValue');
  }

  print('----demo for in loop -------');

  ///way2
  intList.forEach((element) {
    // if (index % 2 == 0) {
    print(element);
    // }
  });
}

///Do while - while
void demoDoWhileFtWhile(List<int> intList) {
  int indexForWhile = 0;
  int indexForDoWhile = 0;

  while (indexForWhile < intList.length) {
    // index++;
    int indexCurrent = indexForWhile + 1;
    print('number at index $indexCurrent is : ${intList[indexForWhile]}');
    indexForWhile++;
  }

  do {
    int indexCurrent = indexForDoWhile + 1;
    print('number at index $indexCurrent is : ${intList[indexForDoWhile]}');
    indexForDoWhile++;
  } while (indexForDoWhile < intList.length);
}
