import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/DrawerMenu.dart';
import 'package:flutter_ui/travel_booking/constants/ColorConstant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/travel_booking/constants/StyleConstant.dart';
import 'package:flutter_ui/travel_booking/models/CarouselModel.dart';
import 'package:flutter_ui/travel_booking/models/PopularDestinationModel.dart';
import 'package:flutter_ui/travel_booking/widgets/BottomNavigationTravelkuy.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelBookingUI extends StatefulWidget {
  @override
  _TravelBookingUIState createState() => _TravelBookingUIState();
}

class _TravelBookingUIState extends State<TravelBookingUI> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),
      drawer: DrawerMenu(),
      backgroundColor: mBackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 24),
              child: Text(
                'Hi, Sang 👋 This Promos for You!',
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: AssetImage(
                                  carousels[index].image,
                                ),
                                fit: BoxFit.cover),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //3 chấm
                      Row(
                        children: map<Widget>(carousels, (index, image) {
                          return Container(
                            alignment: Alignment.centerLeft,
                            height: 6,
                            width: 6,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _current == index ? mBlueColor : mGreyColor,
                            ),
                          );
                        }),
                      ),
                      // more
                      Text(
                        'More...',
                        style: mMoreDiscountStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Let\'s Booking',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/service_flight_icon.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Flight',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Fell freedom',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/service_train_icon.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Trains',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Intercity',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/service_hotel_icon.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Hotel',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Let\'s take a break',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                'assets/svg/service_car_rental_icon.svg',
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Car Rental',
                                      style: mServiceTitleStyle,
                                    ),
                                    Text(
                                      'Around the city',
                                      style: mServiceSubtitleStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 12),
              child: Text(
                'Popular Destinations',
                style: mTitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16, right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: populars.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: mBorderColor,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              populars[index].image,
                              height: 74,
                            ),
                            Text(
                              populars[index].name,
                              style: mPopularDestinationTitleStyle,
                            ),
                            Text(
                              populars[index].country,
                              style: mPopularDestinationSubtitleStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
