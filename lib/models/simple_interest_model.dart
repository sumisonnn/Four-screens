class SimpleInterestModel {
  final double principal;
  final double rate;
  final double time;

  SimpleInterestModel({
    required this.principal,
    required this.rate,
    required this.time,
  });

  double calculateSimpleInterest() {
    return (principal * time * rate) / 100;
  }
}
