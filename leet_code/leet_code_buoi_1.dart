void main() {
  ///Bai1
  List<int> input = [0, 3, 0, 8, 3, 4, 25, 61, 72, 89, 100];
  print(bai1(input));
  print(countZero(input));
}

///Bai1
// [3,8,3,4,25,61,72]; <int>[]
// [0,1,...,n-1] index
// index % 2 == 0 -> 'Fizz', index %3 == 0 'Buzz'
// index % 2 == 0 && index % 3 == 0 'FizzBuzz'
// -> List output addvao
// [3,8, 'Fizz', 'Buzz', 'Fiz', 61, 'FizzBuzz']

List<dynamic> bai1(List<int> input) {
  final List<dynamic> result = [];
  for (int index = 0; index < input.length; index++) {
    dynamic valueCurrent = input[index];

    if (index == 0) {
      result.add(valueCurrent);
    } else {
      if (index % 2 == 0 && index % 3 == 0) {
        valueCurrent = 'FizzBuzz';
      } else if (index % 2 == 0) {
        valueCurrent = 'Fizz';
      } else if (index % 3 == 0) {
        valueCurrent = 'Buzz';
      } else {
        //nothing
      }
      result.add(valueCurrent);
    }
  }

  return result;
}

///Bai2 (n)
///n -> căn bậc 2 của (n) (16) -> (4) -> True
///false (7) -> căn bậc 2 của 7 -> 2,.... -> False
// 32 -> false
// 1-> 32 -> value * value == input -> T else F

///bai3 (<int>[])
///[0,1,0,2,0,3,0,0] -> 5
///[0,2,3,4,0] -> 2
/// count number have value is zero
int countZero(List<int> input) {
  input.sort(); //0,3,2,4 -> 0,2,3,4
  int count = 0;
  for (int index = 0; index < input.length; index++) {
    if (input[index] == 0) {
      count++;
    } else {
      break;
    }
  }

  return count;
}

///bai4 (<int>[])
///[0,1,0,2,0,0,0,3,0,0] -> 3
///[0,2,3,4,0] -> 1
/// count number have value is zero
