class SignUpData {
  String userName;
  String gender;
  int age;
  double height;
  double kcalToEat;
  double targetWeight;
  double targetDate;

  SignUpData({
    required this.userName,
    required this.gender,
    required this.age,
    required this.height,
    required this.kcalToEat,
    required this.targetWeight,
    required this.targetDate,
  });

  factory SignUpData.fromJson(Map<String, dynamic> json) {
    return SignUpData(
      userName: json['userName'],
      gender: json['gender'],
      age: json['age'],
      height: json['height'],
      kcalToEat: json['kcalToEat'],
      targetWeight: json['targetWeight'],
      targetDate: json['targetDate'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userName'] = userName;
    data['gender'] = gender;
    data['age'] = age;
    data['kcalTtoEat'] = kcalToEat;
    data['targetWeight'] = targetWeight;
    data['targetDate'] = targetDate;
    return data;
  }
}
