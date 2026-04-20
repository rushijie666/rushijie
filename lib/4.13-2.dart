void main() {
  int multipleNumber1(int number, int multiplier) => number * multiplier;
  int multipleNumber2(int number, [int multiplier = 1]) => number * multiplier;
  double calculatePrice(double originalPrice, [double discountRate = 0]) {
    double discountAmount = originalPrice * (discountRate / 100);
    return originalPrice - discountAmount;
  }
  double price1 = 10000.0;
  double finalPrice1 = calculatePrice(price1);
  print('价格$price1元，无折扣: $finalPrice1');

  double price2 = 10000.0;
  double discountRate2 = 20.0;
  double finalPrice2 = calculatePrice(price2, discountRate2);
  print('价格$price2元，折扣率 $discountRate2%: $finalPrice2');
}

