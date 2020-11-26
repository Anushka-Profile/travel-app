import 'package:flutter1/model/activity_model.dart';

class Destiny {
  String imageURL;
  String name;
  String date;
  int price;

  Destiny({
    this.imageURL,
    this.name,
    this.date,
    this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageURL: 'https://images.unsplash.com/photo-1545126178-862cdb469409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    deptName: 'Mumbai',
    destName: 'Rajasthan',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    price: 30,
  ),
  Activity(
    imageURL: 'https://images.unsplash.com/photo-1555952238-ae1739caa01a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8ZGVsaGklMjBpbmRpYXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
    deptName: 'Mumbai',
    destName: 'Delhi',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '1:00 pm'],
    price: 40,
  ),
  Activity(
    imageURL: 'https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dmVuaWNlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60',
    deptName: 'Delhi',
    destName: 'Venice',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '4:00 pm'],
    price: 210,
  ),
];

List<Destiny> destinies = [
  Destiny(
    imageURL: 'https://images.unsplash.com/photo-1528916138893-06acfc566dea?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdGVsfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60',
    name: 'Miami',
    date: 'November',
    price: 120,
  ),
  Destiny(
    imageURL: 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Norway',
    date: 'December',
    price: 300,
  ),
  Destiny(
    imageURL: 'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Murano and Burano Tour',
    date: 'January',
    price: 210,
  ),
];

