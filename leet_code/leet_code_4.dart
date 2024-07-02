void main() {
  List<int> inputRank = [10, 3, 5, 9, 8];
  print(findRelativeRanks(inputRank));
}

List<String> findRelativeRanks(List<int> scores) {
  //sort -> sắp xếp điểm theo giảm dần
  List<int> sortedScores = List.from(scores)..sort((a, b) => b - a);

  List<String> result = [];

  //Lưu trữ số điểm từng vận động viên
  Map<int, String> rankMap = {};

  //Duyệt qua ds số điểm đã sắp xếp -> lưu trữ thứ hạng
  for (int index = 0; index < sortedScores.length; index++) {
    if (index == 0) {
      rankMap[sortedScores[index]] = 'Gold';
    } else if (index == 1) {
      rankMap[sortedScores[index]] = 'Silver';
    } else if (index == 2) {
      rankMap[sortedScores[index]] = 'Bronze';
    } else {
      rankMap[sortedScores[index]] = (index + 1).toString();
    }
  }

  //Duyệt qua danh sách số điểm ban đầu lấy giá trị từ Map để đưa vào danh sách kq
  for (int index = 0; index < scores.length; index++) {
    result.add(rankMap[scores[index]] ?? '');
    // add(rankMap[scores[0]] ?? ''); -> scores[0] = 10
    // add(rankMap[scores[1]] ?? ''); -> scores[1] = 3
    // add(rankMap[scores[2]] ?? ''); -> scores[2] = 5
    // add(rankMap[scores[3]] ?? ''); 9
    // add(rankMap[scores[4]] ?? ''); 9
  }

  return result;
}

///
// 1. Map trong Dart là gì?
// a. Kiểu dữ liệu chứa các phần tử theo thứ tự
// b. Kiểu dữ liệu chứa các phần tử không theo thứ tự
// c. Kiểu dữ liệu chỉ chứa các phần tử số nguyên
// List<> ... [0-----lenght-1] map['value'] = 'huy'
// 2. Cách khởi tạo một Map trong Dart là gì?
// a. Sử dụng từ khóa Map và dấu ngoặc đơn
// b. Sử dụng từ khóa List và dấu ngoặc vuông
// c. Sử dụng từ khóa Set và dấu ngoặc nhọn
//
// 3. Các phần tử trong Map được lưu trữ dưới dạng gì?
// a. Các cặp key-value
// b. Các giá trị độc lập
// c. Các cặp key-key
//
// 4. Để truy xuất giá trị trong Map, ta sử dụng key nào?
// a. Key đầu tiên
// b. Key cuối cùng
// c. Key tương ứng với giá trị cần truy xuất
//
// 5. Hàm nào được sử dụng để kiểm tra xem một key có tồn tại trong Map không?
// a. containsKey()
// b. containsValue()
// c. containsElement()
//
// 6. Hàm nào được sử dụng để lấy giá trị tương ứng với một key trong Map?
// a. getValue()
// b. getElement()
// c. operator[]
//
// 7. Để xóa một phần tử trong Map, ta sử dụng phương thức gì?
// a. remove()
// b. delete()
// c. clear()
//
// 8. Hãy cho biết đoạn mã Dart dưới đây có khởi tạo một Map như thế nào:
// ```
// Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
// ```
// a. Sử dụng từ khóa Map và dấu ngoặc đơn
// b. Sử dụng từ khóa List và dấu ngoặc vuông
// c. Sử dụng từ khóa Set và dấu ngoặc nhọn
//
// 9. Cho đoạn mã Dart sau:
// ```
// Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
// int value = myMap['b'];
// ```
// Giá trị của biến value là gì?
// a. 1
// b. 2
// c. 3
//
// 10. Cho đoạn mã Dart sau:
// ```
// Map<String, int> myMap = {'a': 1, 'b': 2, 'c': 3};
// myMap.remove('b');
// ```
// Sau khi thực hiện đoạn mã này, giá trị của myMap là gì?
// a. {'a': 1, 'c': 3}
// b. {'a': 1, 'b': 2, 'c': 3}
// c. {'b': 2, 'c': 3}

///Tìm số lớn thứ 2 trong danh sách số nguyên bất kì [1,2,3,4,5] -> 4
