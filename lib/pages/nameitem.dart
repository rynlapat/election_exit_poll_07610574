class NameItem {
  final int number;
  final String displayName;


  NameItem({
    required this.number,
    required this.displayName,

  });

  factory NameItem.fromJson(Map<String, dynamic> json) {
    return NameItem(
      number: json['number'],
      displayName: json['displayName'],

    );
  }

  NameItem.fromJson2(Map<String, dynamic> json)
      : number = json['number'],
        displayName = json['displayName'];



  @override

  String toString() {
    return '$number : ชื่อ $displayName';
  }
}
