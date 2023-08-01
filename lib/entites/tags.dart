import 'package:flutter/material.dart';

var chips = [
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(Icons.photo_camera,
      color: Colors.black38,),
    label: Text('Место для фото'),
  ),
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(Icons.restaurant,
      color: Colors.black38,),
    label: Text("Можно поесть"),
  ),
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(Icons.battery_alert,
      color: Colors.black38,),
    label: Text('Место отдыха'),
  ),
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(Icons.school,
      color: Colors.black38,),
    label: Text('Место учебы'),
  ),
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(
        Icons.star_border,
        color: Colors.black38,),
    label: Text('Место мероприятий'),
  ),
  const Chip(
    backgroundColor: Colors.white,
    side: BorderSide(
      color: Colors.grey,
      width: 0.5,
    ),
    avatar: Icon(Icons.sports,
      color: Colors.black38,),
    label: Text('Место спорта'),
  ),
];
