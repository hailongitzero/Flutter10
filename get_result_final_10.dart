// Hàm tính tổng các số trên 2 đường chéo của ma trận nxn
int sumDiagonals(List<List<int>> matrix) {
  int n = matrix.length;
  int sum = 0;

  // Tính tổng các số trên đường chéo chính
  for (int i = 0; i < n; i++) {
    sum += matrix[i][i];
  }

  // Tính tổng các số trên đường chéo phụ
  for (int i = 0; i < n; i++) {
    sum += matrix[i][n - 1 - i];
  }

  // Trừ đi các phần tử trùng lặp (nếu n là số lẻ)
  if (n % 2 != 0) {
    sum -= matrix[n ~/ 2][n ~/ 2];
  }

  return sum;
}

int numRescueBoats(List<int> people, int limit) {
  int ans = 0;
  int i = 0;
  int j = people.length - 1;
  people.sort();

  while (i <= j) {
    if (people[i] + people[j] <= limit) {
      i++;
    }
    j--;
    ans++;
  }

  return ans;
}

// Ví dụ sử dụng
void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  int result = sumDiagonals(matrix);
  print(result); // Output: 30
}
