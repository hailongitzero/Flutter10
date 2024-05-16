import 'buoi5.dart';

///Main
void main() {
  Bird chim = Bird('chimSe');
  chim.move();
  chim.walk();
  chim.nameBird = 'chim bo cau';
  Snake snake = Snake('run luc');
  snake.walk();
  snake.test();
  print(chim.nameBird);
  print(snake.nameSnake);
  Dog choCo = Dog();
  // Animal animal = Animal(); -> error cause abstract
  chim.move();
  choCo.move();

  ///Demo extend super
  // Dad boVietNam = Dad('Hung', 48);
  // Son conBoVn = Son('HÁN', 20, true);
  // conBoVn.move();
  // print(boVietNam.name);
  // print(conBoVn.name);

  ///demo string
  String nameClientVi = "nguyen van a"; // + :)

  ///after scale
  String nameClientAfr =
      "djklasjdklasjdkljasdkljsad asdjlkasjdklasjdklasjdklasj jsdklajdask"; // + :)

  print(nameClientAfr.addSmileIntoLastWord());
  //Text(nameClientAfr)
}

///End Main
///CLASS
///ABSTRACT, MIXIN, EXTEND, ON, WITH, IMPLEMENTS, SUPER (*PRIVATE, *PUBLIC: * not key in dart )

///ABSTRACT
/// For Real
abstract class ColorApp {
  /// không khai báo thuộc tính
  String colorPrimaryText();
}

abstract class LanguageApp {
  String language() {
    return '';
  }
}

class ColorAppTypeSuper {
  String color;

  ColorAppTypeSuper(this.color);

  /// không khai báo thuộc tính
  String colorPrimaryText() {
    return '';
  }
}

class LanguageAppTypeSuper {
  String language() {
    return '';
  }
}

class MyApp extends ColorAppTypeSuper implements LanguageApp, ColorApp {
  @override
  String colorPrimaryText() {
    // TODO: implement colorPrimaryText
    throw UnimplementedError();
  }

  @override
  String language() {
    // TODO: implement language
    throw UnimplementedError();
  }

  MyApp(super.color);
}

class LightThemeColor extends ColorApp {
  /// override: customize chi tiết lại đối với phương thức của class trừu tượng hoặc chi tiết sửa
  /// đổi lại code của class cha
  @override
  String colorPrimaryText() {
    return "trang xanh";
  }
}

class DarkThemeColor extends ColorApp {
  @override
  String colorPrimaryText() {
    return "trang den";
  }
}

/// For Study Example
abstract class Animal {
  void move();
}

abstract class BodyPart {
  void isHaveTeeth();
}

class Bird extends Animal with Walker {
  String _nameBird;

  Bird(this._nameBird);

  String get nameBird => _nameBird;

  set nameBird(String value) {
    _nameBird = value;
  }

  @override
  void move() {
    print('$_nameBird fly');
  }
}

// class Snake implements Animal, BodyPart with Walker{
class Snake extends Animal with Walker {
  String nameSnake;

  Snake(this.nameSnake);

  @override
  void isHaveTeeth() {}

  @override
  void move() {}
}

class Dog extends Animal {
  @override
  void move() {
    print('walk');
  }
}

///Extends, Super
class Dad extends Granpa {
  //7x, 6x
  String name;
  int age;

  Dad(super.wasArmy, this.name, this.age);

  // Dad(this.name, this.age) : super(false);

  void move() {
    print('bố di bo');
  }
}

class Granpa {
  bool wasArmy;

  Granpa(this.wasArmy);
}

class Son extends Dad {
  bool isGenZ;

  Son(super.wasArmy, super.name, super.age, this.isGenZ);

  @override
  void move() {
    print('${super.name} di bo');
  }
}

/// WITH

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;

  ///EXTENSION
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

///MIXIN, ON
mixin Walker on Animal {
  void walk() {
    print("I'm walking");
  }
}

///Tìm hiểu thêm
// 1.optional
// interface, sealed,
// 2.required
// extension

///Extension
extension StringExtensionInMyApp on String {
  String addSmileIntoLastWord() {
    return this + ':)';
  }
}

extension upgradeMove on Snake {
  void test() {
    print(this.nameSnake);
  }
}
