void main() {
  ///Warning when work with list
  List<int> numbers = [3, 2, 1];
  numbers.sort();
  print('numbers after sort $numbers');

  ///Not work with list like this
  // List<int> numbersClone = numbers; //[3, 2, 1]
  List<int> numbersClone = List.from(numbers);
  // numbersClone.removeLast();
  print(sortListCore(numbersClone));
  print(isValidEmail("reall@gmail.com"));
  print(isValidEmail("reall@@gmail.com"));
  // print(numbers);
}

int exe1(String input) {
  ///  Hello word  top  ///
  String afterConvert = input.trim();

  /// Hello word  top
  List<String> justWords = afterConvert.split(' ');

  /// [Hello, word, top]
  int resultLength = justWords.last.length;
  return resultLength;
}

///TK:
///reallqhuy@gmail.com
///Mk:
///Pass123

/// Cho một chuỗi s bao gồm các từ và khoảng trắng, trả về độ dài của từ cuối cùng trong chuỗi.
//
// **VÍ DỤ:**
//
// ***- Example 1:
// Input: s = "Hello World"
// Output: 5
// Explanation: The last word is "World" with length 5.***
//
//
// ***- Example 2:
// Input: s = "   fly me   to   the moon  "
// Output: 4***
//
// ***- Example 3:
// Input: s = "luffy is still joyboy"
// Output: 6***

///Loại bỏ được khoảng trắng ở 2 đầu chuỗi
///tìm được từ ở cuối cùng trong một chuỗi -> search
/// worldLast.length

void exe2() {
  //done
}

/// Cho 3 cạnh của 1 tam giác -> cho ra là T nếu thoả mãn
/// tạo thành 1 tam giác và ngược lại
/// input: 3 4 7
/// T
/// 3 1 1
/// F

///[3,4,2,1,6,2,20]
///-> sort [1,2,2,3,4,6,20]
/// list.sort()
/// [3,4,2,1,6,2,20]
/// i=0; j=1
/// 3>4 -> k swap -> 3 > 2 -> swap
/// [2,4,3,1,6,2,20] i=0; j=3 -> swap
/// [1,4,3,2,6,2,20] i=0;j=4
///
///
List<int> sortListCore(List<int> input) {
  final List<int> inputClone = List.from(input);

  ///[5,4,2,1]
  for (int i = 0; i < inputClone.length - 1; i++) {
    for (int j = i + 1; j < inputClone.length; j++) {
      if (inputClone[i] > inputClone[j]) {
        ///swap
        int tmp = inputClone[i];
        inputClone[i] = inputClone[j];
        inputClone[j] = tmp;

        ///End swap
      } else {
        ///nothing
      }
    }
  }

  return inputClone;
}

/// Regex -> regex ntn là email hợp lệ
/// reallqhuy@@gmail.com -> sai
/// reallqhuy@gmail.com -> đúng

bool isValidEmail(String email) {
  bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  return emailValid;
}
