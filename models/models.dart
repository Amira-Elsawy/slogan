class CalorieCalculator {
  final num age;
  final String sex;
  final num weigthKG;
  final num height;

  CalorieCalculator({
    required this.age,
    required this.sex,
    required this.weigthKG,
    required this.height,
  });

  num calculateBMR() {
    if (sex == 'Male') {
      return 10 * weigthKG + 6.25 * height - 5 * age + 5;
    } else {
      return 10 * weigthKG + 6.25 * height - 5 * age - 161;
    }
  }
}


List<String>exer=[
  "chest game" , "back game"
];

List<String>data=[
  "12/7 5:00" , '12/7 6:00'
];