class MyPageData {
  String userName;
  String gender;
  int age;
  double height;
  double kcalToEat;
  double targetWeight;

  MyPageData({
    required this.userName,
    required this.gender,
    required this.age,
    required this.height,
    required this.kcalToEat,
    required this.targetWeight,
  });

  factory MyPageData.fromJson(Map<String, dynamic> json) {
    return MyPageData(
      userName: json['userName'],
      gender: json['gender'],
      age: json['age'],
      height: json['height'],
      kcalToEat: json['kcalToEat'],
      targetWeight: json['targetWeight'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userName'] = userName;
    data['gender'] = gender;
    data['age'] = age;
    data['kcalTtoEat'] = kcalToEat;
    data['targetWeight'] = targetWeight;
    return data;
  }
}
