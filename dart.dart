void main() {
  Car car = Car(
    hight: '1.5',
    whidth: '2.5',
    brand: 'Ford',
  );
  print(car.brand);
  print(car.hight);
  print(car.whidth);
}

class Car {
  final String hight;
  final String whidth;
  final String brand;

  Car({
    required this.hight,
    required this.brand,
    required this.whidth,
  });
}
