import 'dart:math';

///I.
///Tạo một đối tượng Người
///Trong đó có các kiểu thuộc tính
///số CCCD/CMND (khai báo kiểu private),tên, tuổi,
///enum TypePeople(TreCon, NguoiGia, NguoiLon) - có thể null (5p)
///1.Viết hàm khởi tạo cho đối tượng người (5p)
///2.Viết getter, setter cho đối tượng đối với thuộc tính CMND/CCCD (5p)
///3.Viết phương thức trả về kiểu đối tượng người với tham số là tuổi (10p)
///       nếu < 18: trẻ em (enum)
///       nếu [18,60): người lớn (enum)
///       nếu [60, ...]]: người già (enum)

void main() {
  People people1 = People('123', 'nguyen van kid13', 13);
  People people2 = People('132', 'nguyen van adult20', 20);
  People people3 = People('213', 'nguyen van adult55', 55);
  People people4 = People('231', 'nguyen van old89', 89, typePeople: TypePeople.TheOld);
  People people5 = People('321', 'nguyen van kid3', 3, typePeople: TypePeople.Kid);
  print(people1.typePeople);
  people1.peopleFullInfo();
  print(people1.typePeople);
  print(people2.typePeople);
  people2 = people2.peopleFullInfoAnotherWay();
  print(people2.typePeople);
  print('people3 before convert ${people3.typePeople}');
  people3 = people3.peopleFullInfoAnotherWay2(people3);
  print('people3 after convert ${people3.typePeople}');

  List<People> peopleInput = [];
  peopleInput.addAll([people1, people2, people3, people4, people5]);
  print('size ${peopleInput.length}');

  ///Demo class ManagePeople
  ManagePeople managePeople = ManagePeople(peopleInput);
  managePeople.getResultNumbersByTypePeopleExtension();
  // managePeople.getResultNumbersByTypePeople();
  // managePeople.getResultNumbersByTypePeopleAnotherWay(managePeople.people);
  // managePeople.getResultNumbersByTypePeopleAnotherWay(peopleInput);

  List<String> words = ["abc", "ab", "a"];
  print("test");
  print(words.where((e) => e.contains("b")).toList());
}

enum TypePeople {
  Kid,
  Adult,
  TheOld,
}

class People {
  String _id;
  String name;
  int age;
  TypePeople? typePeople;

  People(
    this._id,
    this.name,
    this.age, {
    this.typePeople,
  });

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  bool checkAgeIsEven() => (this.age % 2 == 0) ? true : false;

  People peopleFullInfo() {
    if (this.age < 18) {
      this.typePeople = TypePeople.Kid;
    } else if (this.age >= 18 && this.age < 60) {
      this.typePeople = TypePeople.Adult;
    } else {
      this.typePeople = TypePeople.TheOld;
    }
    return this;
  }

  People peopleFullInfoAnotherWay() {
    People peopleAfterCategory = People(_id, name, age);
    if (this.age < 18) {
      peopleAfterCategory.typePeople = TypePeople.Kid;
    } else if (this.age >= 18 && this.age < 60) {
      peopleAfterCategory.typePeople = TypePeople.Adult;
    } else {
      peopleAfterCategory.typePeople = TypePeople.TheOld;
    }
    return peopleAfterCategory;
  }

  People peopleFullInfoAnotherWay2(People peopleBefore) {
    People peopleAfterCategory = People(peopleBefore.id, peopleBefore.name, peopleBefore.age);
    if (peopleBefore.age < 18) {
      peopleAfterCategory.typePeople = TypePeople.Kid;
    } else if (peopleBefore.age >= 18 && peopleBefore.age < 60) {
      peopleAfterCategory.typePeople = TypePeople.Adult;
    } else {
      peopleAfterCategory.typePeople = TypePeople.TheOld;
    }
    return peopleAfterCategory;
  }

  @override
  String toString() {
    return 'People name: $name, age: $age, typePeople: $typePeople';
  }
}

///
///
/// ==================================
/// II.
/// Viết một đối tượng quản lý các đối tượng Người
/// Trong đó có các thuộc tính danh sách người
/// có các phương thức
/// trả ra tổng số  lượng người già, người trẻ, trẻ em dựa vào thuộc tính TypePeople
/// -> người lớn : x, trẻ em: y, người già: z

class ManagePeople {
  List<People> people;

  ManagePeople(this.people);

  void getResultNumbersByTypePeople() {
    int totalKid = 0;
    int totalAdult = 0;
    int totalOld = 0;
    int lengthLoop = this.people.length;
    for (int index = 0; index < lengthLoop; index++) {
      final People currentHuman = this.people[index];
      if (currentHuman.typePeople == TypePeople.TheOld) {
        totalOld++;
      } else if (currentHuman.typePeople == TypePeople.Adult) {
        totalAdult++;
      } else {
        totalKid++;
        //for count kidNumber
      }
    }

    print("người lớn : $totalAdult, trẻ em: $totalKid, người già: $totalOld");
  }

  void getResultNumbersByTypePeopleAnotherWay(List<People> peopleValue) {
    int totalKid = 0;
    int totalAdult = 0;
    int totalOld = 0;
    int lengthLoop = peopleValue.length;
    int index = 0;
    while (index < lengthLoop) {
      final People currentHuman = this.people[index];
      if (currentHuman.typePeople == TypePeople.TheOld) {
        totalOld++;
      } else if (currentHuman.typePeople == TypePeople.Adult) {
        totalAdult++;
      } else {
        totalKid++;
        //for count kidNumber
      }
      index++;
    }

    print("người lớn : $totalAdult, trẻ em: $totalKid, người già: $totalOld");
  }
}

///BONUS
extension ManagePeopleExtension on ManagePeople {
  void getResultNumbersByTypePeopleExtension() {
    int totalKid = 0;
    int totalAdult = 0;
    int totalOld = 0;
    int lengthLoop = this.people.length;
    for (int index = 0; index < lengthLoop; index++) {
      final People currentHuman = this.people[index];
      if (currentHuman.typePeople == TypePeople.TheOld) {
        totalOld++;
      } else if (currentHuman.typePeople == TypePeople.Adult) {
        totalAdult++;
      } else {
        totalKid++;
        //for count kidNumber
      }
    }

    print("extension người lớn : $totalAdult, trẻ em: $totalKid, người già: $totalOld");
  }
}
