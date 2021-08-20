import 'package:flutter/material.dart';

Color primaryGreen = Color(0xff416d6d);
Color primaryWhite = Colors.white;
Color lightGrey = Colors.grey.shade200;
Color grey = Colors.grey;
Color darkGrey = Colors.grey.shade600;
Color ratingGreen = Colors.green.shade700;
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey.shade400, blurRadius: 10, offset: Offset(0, 5))
];
final List<Map> dish = [
  {'name': 'Pizza', 'path': 'asset/pizza.png'},
  {'name': 'Burger', 'path': 'asset/hamburger.png'},
  {'name': 'Juice', 'path': 'asset/juice.png'},
  {'name': 'Noodles', 'path': 'asset/noodles.png'},
  {'name': 'Rice', 'path': 'asset/rice.png'},
  {'name': 'Cake', 'path': 'asset/cake.png'},
  {'name': 'French Fries', 'path': 'asset/frenchicon.png'},
];
final List<String> imgList = [
  'asset/pizza.jpg', //pizza
  'asset/noodle.jpg', //noodle
  'asset/rasmalai.jpg', //rasmalai
  'asset/paneer.jpg', //paneer
  'asset/burger.jpg', //burger
  'asset/icecream.jpg', //icecream
  'asset/french.jpg' //french
];
final List<Map> restaurant = [
  {
    'name': 'Apna Sweets',
    'rating': '4.2',
    'dish':
        'Mithai, Street Food, South Indian, Fast Food, North Indian, Chinese, Desserts, Beverages',
    'loc': 'Vijay Nagar, Indore',
    'path': 'asset/restaurant/apna.jpg',
    'type': 'asset/veg.png',
    'ind': '0'
  },
  {
    'name': 'Chai Sutta Bar',
    'rating': '3.2',
    'dish': 'Fast Food, Beverages',
    'loc': 'Vijay Nagar, Indore',
    'path': 'asset/restaurant/chaisutta.jpg',
    'type': 'asset/veg.png',
    'ind': '1'
  },
  {
    'name': 'JMB Jain Mithai Bhandar',
    'rating': '3.9',
    'dish': 'Mithai, North Indian, Chinese, Fast Food',
    'loc': 'HIG-LIG, Indore',
    'path': 'asset/restaurant/jmb.jpg',
    'type': 'asset/veg.png',
    'ind': '2'
  },
  {
    'name': 'Joshi Dahi Bada House',
    'rating': '4.9',
    'dish': 'Street Food',
    'loc': 'Sarafa Bazaar, Indore',
    'path': 'asset/restaurant/joshi.jpg',
    'type': 'asset/veg.png',
    'ind': '3'
  },
  {
    'name': 'Little Italy',
    'rating': '4.3',
    'dish': 'Italian, Pizza',
    'loc': 'Vijay Nagar, Indore',
    'path': 'asset/restaurant/italy.jpg',
    'type': 'asset/veg.png',
    'ind': '4'
  },
  {
    'name': 'Pieces N Bones',
    'rating': '3.5',
    'dish': 'North Indian',
    'loc': 'MR 10 Road, Indore',
    'path': 'asset/restaurant/piecesNbones.jpg',
    'type': 'asset/nonveg.png',
    'ind': '5'
  },
  {
    'name': 'Sam' 's Momos',
    'rating': 'New ',
    'dish': 'Chinese, Rolls, Momos, Beverages',
    'loc': 'By Pass Road (South), Indore',
    'path': 'asset/restaurant/sam.jpg',
    'type': 'asset/veg.png',
    'ind': '6'
  },
  {
    'name': 'Shree Gurukripa',
    'rating': '4.3',
    'dish': 'North Indian',
    'loc': 'Sarwate Bus Stand, Indore',
    'path': 'asset/restaurant/guru.jpg',
    'type': 'asset/veg.png',
    'ind': '7'
  },
  {
    'name': 'The Monroe',
    'rating': '4.4',
    'dish': 'North Indian, Chinese, Italian, Desserts, Beverages',
    'loc': 'New Palasia, Indore',
    'path': 'asset/restaurant/monroe.jpg',
    'type': 'asset/veg.png',
    'ind': '8'
  },
  {
    'name': 'Upvaas',
    'rating': '4.1',
    'dish': 'Fast Food',
    'loc': 'Sapna Sangeeta, Indore',
    'path': 'asset/restaurant/upvaas.jpg',
    'type': 'asset/veg.png',
    'ind': '9'
  },
];
final List<Map> userData = [
  {'icon': Icons.shopping_bag, 'data': 'Orders'},
  {'icon': Icons.edit, 'data': 'Edit Profile'},
  {'icon': Icons.card_membership, 'data': 'WoW'},
  {'icon': Icons.favorite, 'data': 'Favourites'},
  {'icon': Icons.credit_card, 'data': 'Payments'},
  {'icon': Icons.location_on, 'data': 'Addresses'},
  {'icon': Icons.logout, 'data': 'Log out'}
];
