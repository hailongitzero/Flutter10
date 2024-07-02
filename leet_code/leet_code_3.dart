/// ["X++","++X","--X"] -> 1
/// ["X++","++X","++X"] -> 3
/// ["X++","--X","++X"] -> 1
/// input value : X++ || ++X || --X || X--

/// List<String> input = ["alice and bob love leetcode", "i think so too", "this is great thanks
/// very
/// much"]
///  input[i] -> số lượng từ trong câu và được ngăn cách theo dấu __-> length -> 5
///
/// List<int> lengthEachSentences = [5,4,6] -> max -> index
///
/// return lengthEachSentences[index]

void main() {
  // print(exe2([
  //   "alice and bob love leetcode",
  //   "i think so too",
  //   "this is great thanks very much "
  //       "hello hallo",
  //   "this is great thanks very much",
  // ]));
  // print(exe3([1, 2, 3, 4]));
  // print(countZeroMax([0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 2, 0]));

  print(checkIsReversedString('abacb', 'caba'));
}

int exe2(List<String> inputSentences) {
  List<double> lengthEachSentences = [];

  inputSentences.forEach((element) {
    final currentLengthWordsInEachSentence = element.split(' ').length;
    lengthEachSentences.add(currentLengthWordsInEachSentence.toDouble());
  });
  // lengthEachSentences [2,4,5]

  int indexMaxLengthSentences = getIndexMaxValueInList(lengthEachSentences);

  return lengthEachSentences[indexMaxLengthSentences].toInt();
}

int getIndexMaxValueInList(List<double> array) {
  ///5,4,6,9,1 -> index:3
  double max = double.minPositive;
  int indexResult = 0;

  for (int index = 0; index < array.length; index++) {
    if (max < array[index]) {
      max = array[index];
      indexResult = index;
    }
  }

  return indexResult;
}

//15 -> 1+5. 123 = 1+2+3
int exe3(List<int> inputList) {
  int totalSum = 0;
  int totalSumEachNumber = 0;

  inputList.forEach((element) {
    totalSum += element;
    totalSumEachNumber += subExe3(element);
  });

  int result = totalSum - totalSumEachNumber;

  return result < 0 ? (result * -1) : result;
}

int subExe3(int value) {
  ///15
  int result = 0;

  ///15 -> T
  while (value > 0) {
    result += value % 10; //l1: result = 5 l2: result = 5 + 1 = 6
    ///123 % 10 = 3 12
    ///123 ~/ 10 -> 12
    value = value ~/ 10; //value = 15 ~/ 10 = 1 l2: 1~/10 = 0
  }

  return result;
}

// Cho một mảng số nguyên nums được sắp xếp theo thứ tự không giảm.
// Hãy trả về một mảng mới chứa bình phương của từng số trong nums, được sắp xếp theo thứ tự không giảm.
//[1,2,3] -> [1,4,9];

//input: 1||3 || 5 || 7 || 15 || 35 .... -> T <==> được tạo ra từ 2,3,5,7
//input: 11 || 13 ||..
//2.5.3.7 -> T
//2.2.5.3.3.7.7.7 -> T
bool checkHappyNumber({required int value}) {
  while (value % 7 == 0) {
    value = value ~/ 7;
  }
  while (value % 5 == 0) {
    value = value ~/ 5;
  }
  while (value % 3 == 0) {
    value = value ~/ 3;
  }
  while (value % 2 == 0) {
    value = value ~/ 2;
  }
  return value == 1;
}

/// Class Human -Object (String _id; String name; int age; String image)
/// Class ManageHuman : (List<Human> humans)
///   1.Tìm danh sách human theo chữ cái bất kì
///   2.sort List Human theo tuổi cao -> thấp
///
///
/// Upgrade -> Screen in flutter bao gồm các function như trên kèm demo (Scaffold)
/// Bắt buộc có: TextFormField -> nhập kí tự tìm kiếm human -> bấm vào suffixIcon -> tìm
/// xoá  -> all
///               FloatActionButton -> sort listHuman

/// [0,1,0,0,2,3,0,0,0,0,2] -> 4
/// [0,0,0,0,0,1,0,0,2,3,0,0,0,0,2] -> 5
/// [5  ,1,2  ,2,3,4  ,2] -> 5
//đếm số lần xuất hiện số 0 liền kề nhau nhiều nhất

int countZeroMax(List<int> input) {
  int countResult = -999999;
  int currentCount = 0;

  for (int index = 0; index < input.length; index++) {
    if (input[index] == 0) {
      currentCount++;
    } else {
      if (currentCount > countResult) {
        countResult = currentCount;
        currentCount = 0;
      } else {
        //nothing
      }
    }
  }

  return countResult;
}

bool checkIsReversedString(String s, String t) {
  final List<String> tmpA = s.split('');
  final List<String> tmpB = t.split('');
  //abaca
  // i = 3
  //acab
  // j = 0
  // i = 4
  // j = -1
  if (s.length == t.length) {
    for (int i = 0, j = (tmpB.length - 1); i <= (tmpA.length) && j >= 0; i++, j--) {
      if (tmpA[i] != tmpB[j]) {
        print(tmpA[i]);
        print(tmpB[j]);
        return false;
      }
    }
    return true;
  } else {
    return false;
  }
}
