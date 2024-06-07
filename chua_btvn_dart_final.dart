void main() {
  List<SupMaterial> materials = [
    SupMaterial.fromNameType('plate', MaterialType.wood),
    SupMaterial.fromNameType('bar', MaterialType.steel),
    SupMaterial.fromNameType('roll', MaterialType.rubber),
    SupMaterial.fromNameType('block', MaterialType.plastic),
  ];
  // List<SupMaterial> searchResult = getResult('plate', materials);
  List<SupMaterial> searchResult = SupMaterial.getResult('plate', materials);
  List<SupMaterial> searchResult2 = SupMaterial.getResult2('plate', materials);
  searchResult.forEach((item) => print(item.name));
}

enum MaterialType { plastic, steel, rubber, wood }

class Material {
  final int materialId;
  final String name;
  final double price;
  final String madeIn;
  final MaterialType type;

  Material({
    required this.materialId,
    required this.name,
    required this.price,
    required this.madeIn,
    required this.type,
  }) : assert(price >= 0, "Price cannot be negative");

  Material.fromNameAndType(String name, MaterialType type)
      : this(
          materialId: 0,
          name: name,
          price: 0.0,
          madeIn: "",
          type: type,
        );
}

class SupMaterial extends Material {
  final bool? canMakeHouse;

  SupMaterial({
    required int materialId,
    required String name,
    required double price,
    required String madeIn,
    required MaterialType type,
    this.canMakeHouse,
  }) : super(
          materialId: materialId,
          name: name,
          price: price,
          madeIn: madeIn,
          type: type,
        );

  SupMaterial.fromNameType(String name, MaterialType type)
      : this(
          materialId: 0,
          name: name,
          price: 0.0,
          madeIn: "",
          type: type,
          canMakeHouse: type == MaterialType.steel || type == MaterialType.wood ? true : false,
        );

  static List<SupMaterial> getResult(String searchValue, List<SupMaterial> inputList) {
    return inputList
        .where((material) => material.name.toLowerCase().contains(searchValue.toLowerCase()))
        .toList();
  }

  static List<SupMaterial> getResult2(String searchValue, List<SupMaterial> inputList) {
    List<SupMaterial> result = [];
    inputList.forEach((element) {
      if (element.name.contains(searchValue) && element.canMakeHouse == true) {
        result.add(element);
      }
    });

    return result;
  }
}
