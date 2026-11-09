import 'package:flutter/material.dart';
import '../models/attraction.dart';
import '../models/bottom_bar_item.dart';

const Color mainThemeColor = Color(0xFF1B5E20); // тёмно-зелёный «скейт-парк»

final List<Attraction> attractionsList = [
  Attraction(
      imgPath:
          'https://avatars.mds.yandex.net/get-altay/910613/2a000001622c916c9bbbd17a9597d810997c/XXL_height',
      name: 'Скейт-парк «Адреналин»',
      desc: 'Крытый скейт-парк',
      location: 'Москва, РФ',
      rating: 3,
      price: 80.0),
  Attraction(
      imgPath:
          'https://avatars.mds.yandex.net/get-altay/12838938/2a000001907332cc065e01e0053229635f7c/XXXL',
      name: 'Скейт-парк «Улица»',
      desc: 'Открытая площадка для стрита',
      price: 90.0,
      rating: 4,
      location: 'Санкт-Петербург, РФ'),
  Attraction(
      imgPath:
          'https://avatars.mds.yandex.net/get-altay/11940760/2a0000018ec48cd12edfb53a14b1dbc836bb/XXL_height',
      name: 'Скейт-парк «Олли»',
      desc: 'Парк для начинающих',
      price: 100.0,
      rating: 5,
      location: 'Казань, РФ'),
   Attraction(
      imgPath:
          'https://static.tildacdn.com/tild3861-3831-4130-b864-326631656233/photo.jpg',
      name: 'Скейт-парк «Боул»',
      desc: 'Боул и рампы',
      price: 100.0,
      rating: 4,
      location: 'Сочи, РФ'),
];

final List<BottomBarItem> barItemsList = [
  BottomBarItem(label: 'Главная', isSelected: true, icon: Icons.home),
  BottomBarItem(label: 'Профиль', isSelected: false, icon: Icons.person),
  BottomBarItem(label: 'Записи', isSelected: false, icon: Icons.pending_actions),
  BottomBarItem(label: 'Оплата', isSelected: false, icon: Icons.payments),
  BottomBarItem(label: 'Ещё', isSelected: false, icon: Icons.more_horiz),
];