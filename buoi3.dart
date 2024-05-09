///LOOP
///vòng lặp

// for loops
// while and do while loops
// break and continue
void main() {
  List<int> intList = [3, 4, 1, 2, 7, 10]; // length 6
  // demoForInLoop(intList);

  List<List<int>> anArray2D = [
    [3, 4, 5, 3],
    [22, 11, 33],
  ];
  // anArray2D[row][col]; [0][0], [0][1], [0,2], [1,0,1,1,1,2]
  for (int row = 0; row < anArray2D.length; row++) {
    for (int col = 0; col < anArray2D[row].length; col++) {
      print('value at [${row + 1}][${col + 1}] is ${anArray2D[row][col]}');
    }
  }

  // exercise();
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

///in ra tu 1 -> 100
void exercise() {
  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    if (i >= 90) break;
    if (i % 2 == 0) {
      sum += i;
    }
  }
  print(sum);
}
