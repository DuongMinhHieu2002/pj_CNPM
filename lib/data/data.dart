import 'package:datdoan/models/food.dart';
import 'package:datdoan/models/order.dart';
import 'package:datdoan/models/restaurant.dart';
import 'package:datdoan/models/user.dart';

// food
final _hutieu = Food(
  imageUrl: 'assets/images/hutieu.jpg',
  name: 'hủ tiếu',
  price: 25000,
);
final _banhcuon = Food(
  imageUrl: 'assets/images/bancuon.jpeg',
  name: 'bánh cuốn',
  price: 25000,
);
final _buncha = Food(
  imageUrl: 'assets/images/buncha.jpeg',
  name: 'bún chả',
  price: 25000,
);
final _pho = Food(
  imageUrl: 'assets/images/pho.jpeg',
  name: 'phở',
  price: 25000,
);
final _banmi = Food(
  imageUrl: 'assets/images/banhmi.jpeg',
  name: 'bánh mì',
  price: 25000,
);

// restaurant

final _restaurant0 = Restaurant(
    imageUrl: 'assets/images/hieu.jpg',
    name: 'Quán Hiếu',
    address: '25 thịnh đán',
    rating: 5,
    menu: [_banhcuon, _buncha, _banmi]);
final _restaurant1 = Restaurant(
    imageUrl: 'assets/images/ngoc.jpg',
    name: 'Quán Ngọc',
    address: '26 sơn tiến',
    rating: 5,
    menu: [_buncha, _hutieu, _banmi]);
final _restaurant2 = Restaurant(
    imageUrl: 'assets/images/chuc.jpg',
    name: 'Quán Chức',
    address: '27 Thái Nguyên',
    rating: 5,
    menu: [_hutieu, _banhcuon, _banmi]);
final _restaurant3 = Restaurant(
    imageUrl: 'assets/images/lan.jpg',
    name: 'Quán Lan',
    address: 'ICTU',
    rating: 5,
    menu: [_banhcuon, _hutieu, _banmi]);
final _restaurant4 = Restaurant(
    imageUrl: 'assets/images/loc.jpg',
    name: 'Quán Lộc',
    address: 'ICTU',
    rating: 5,
    menu: [_buncha, _pho, _banmi]);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant2,
  _restaurant3,
  _restaurant1,
  _restaurant4,
];

final currentUser = User(name: 'Damon', orders: [
  Order(
    date: 'Nov 10,2019',
    food: _banmi,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _buncha,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _hutieu,
    restaurant: _restaurant2,
    quantity: 1,
  ),
], cart: [
  Order(
    date: 'Nov 10,2019',
    food: _pho,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _banmi,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _banhcuon,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _banmi,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _banmi,
    restaurant: _restaurant2,
    quantity: 1,
  ),
  Order(
    date: 'Nov 10,2019',
    food: _banmi,
    restaurant: _restaurant2,
    quantity: 6,
  ),
]);
