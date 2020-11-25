import 'package:first_app/model/country_model.dart';
import 'package:first_app/model/popular_tours_model.dart';

List<CountryModel> getCountrys() {
  List<CountryModel> country = new List();
  CountryModel countryModel = new CountryModel();

//1
  countryModel.countryName = "Paris";
  countryModel.countryName = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1532728065-ae5cc28665d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1530&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

  //2
  countryModel.countryName = "Malaysia";
  countryModel.countryName = "Sale";
  countryModel.noOfTours = 12;
  countryModel.rating = 4.3;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1503899036084-c55cdd92da26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

  //3
  countryModel.countryName = "Jordan";
  countryModel.countryName = "New";
  countryModel.noOfTours = 10;
  countryModel.rating = 3.8;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1563645774182-d14c97bd52fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "Sweden";
  countryModel.countryName = "New";
  countryModel.noOfTours = 20;
  countryModel.rating = 4.6;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1575365872518-1f378590b6b7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=671&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

//2
  countryModel.countryName = "Malaysia";
  countryModel.countryName = "Sale";
  countryModel.noOfTours = 12;
  countryModel.rating = 4.3;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1503899036084-c55cdd92da26?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

//3
  countryModel.countryName = "Jordan";
  countryModel.countryName = "New";
  countryModel.noOfTours = 10;
  countryModel.rating = 3.8;
  countryModel.imgURL =
      "https://images.unsplash.com/photo-1563645774182-d14c97bd52fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80";
  country.add(countryModel);
  countryModel = new CountryModel();

  return country;
}

List<PopularTourModel> getPopularTours() {
  List<PopularTourModel> popularTourModels = new List();
  PopularTourModel popularTourModel = new PopularTourModel();

  //1
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1491884662610-dfcd28f30cfb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80";
  popularTourModel.title = "Japan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 17000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //2
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1540483761890-a1f7be05d99f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "South Korea";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 20000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //3
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1545126178-862cdb469409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Rajasthan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 12000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //1
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1491884662610-dfcd28f30cfb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80";
  popularTourModel.title = "Japan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 17000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //2
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1540483761890-a1f7be05d99f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "South Korea";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 20000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //3
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1545126178-862cdb469409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Rajasthan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 12000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //1
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1491884662610-dfcd28f30cfb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1534&q=80";
  popularTourModel.title = "Japan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 17000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //2
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1540483761890-a1f7be05d99f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "South Korea";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 20000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  //3
  popularTourModel.imgURL =
      "https://images.unsplash.com/photo-1545126178-862cdb469409?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Rajasthan";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "Rs 12000";
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();

  return popularTourModels;
}
