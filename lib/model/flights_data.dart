import 'package:first_app/model/activity_model.dart';

class Destiny {
  String imageURL;
  String name;
  String date;
  String price;

  Destiny({
    this.imageURL,
    this.name,
    this.date,
    this.price,
  });
}

List<Activity> activities = [
  Activity(
    imageURL:
        'https://images.unsplash.com/photo-1545126178-862cdb469409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
    deptName: 'MUM',
    destName: 'JAI',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    price: 30,
  ),
  Activity(
    imageURL:
        'https://images.unsplash.com/photo-1555952238-ae1739caa01a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8ZGVsaGklMjBpbmRpYXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60',
    deptName: 'MUM',
    destName: 'DEL',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '1:00 pm'],
    price: 40,
  ),
  Activity(
    imageURL:
        'https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dmVuaWNlfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60',
    deptName: 'DEL',
    destName: 'VCE',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 am', '6:00 am'],
    price: 210,
  ),
  Activity(
    imageURL:
        'https://images.unsplash.com/photo-1593417034675-3ed7eda1bee9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80',
    deptName: 'DEL',
    destName: 'COK',
    type: 'Sightseeing Tour',
    startTimes: ['1:45 pm', '4:00 am'],
    price: 300,
  ),
  Activity(
    imageURL:
        'https://images.unsplash.com/photo-1512315342380-81f12a02bd7e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=699&q=80',
    deptName: 'CJB',
    destName: 'JFK',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '4:00 pm'],
    price: 210,
  ),
];

List<Destiny> destinies = [
  Destiny(
    imageURL:
        'https://images.unsplash.com/photo-1528916138893-06acfc566dea?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fGhvdGVsfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60',
    name: 'Hotel Inn Miami Beach\nMiami',
    date: 'Best Time to Visit: May',
    price: '1200',
  ),
  Destiny(
    imageURL:
        'https://images.unsplash.com/photo-1571896349842-33c89424de2d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Thon Hotel Rosenkrantz Oslo\nNorway',
    date: 'Best Time to Visit: December',
    price: '3500',
  ),
  Destiny(
    imageURL:
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fpix10.agoda.net%2FhotelImages%2F983%2F983002%2F983002_16091414380046443534.jpg%3Fs%3D1024x768&imgrefurl=https%3A%2F%2Fwww.agoda.com%2Fen-in%2Fpearl-palace-heritage-the-boutique-guest-house%2Fhotel%2Fjaipur-in.html&tbnid=MS0reUSkGw5E_M&vet=12ahUKEwjm8J7G_aDtAhWPY30KHaX5DR4QMygLegUIARCmAQ..i&docid=gYyn8aVbtj80GM&w=1024&h=681&q=hotel%20pearl%20palace%20jaipur&ved=2ahUKEwjm8J7G_aDtAhWPY30KHaX5DR4QMygLegUIARCmAQ',
    name: 'Hotel Pearl Palace\nJaipur,India',
    date: 'Best Time to Visit: mid-February',
    price: '2900',
  ),
  Destiny(
    imageURL:
        'https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8aG90ZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60',
    name: 'Murano and Burano Tour',
    date: 'Best Time to Visit: January',
    price: '3200',
  ),
  Destiny(
    imageURL:
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcf.bstatic.com%2Fimages%2Fhotel%2Fmax1024x768%2F147%2F147421255.jpg&imgrefurl=https%3A%2F%2Fwww.booking.com%2Fhotel%2Fin%2Fwelcome-heritage-denzong-regency.html&tbnid=Ulo5ryCNMFB6KM&vet=12ahUKEwitss_IgaHtAhUn0nMBHTFPCyYQMygCegUIARCVAQ..i&docid=7QDtPfPMONLKIM&w=1024&h=683&q=welcomheritage%20denzong%20regency&ved=2ahUKEwitss_IgaHtAhUn0nMBHTFPCyYQMygCegUIARCVAQ',
    name: 'WelcomHeritage Denzong Regency\nSikkim',
    date: 'Best Time to Visit: October',
    price: '3400',
  )
];
