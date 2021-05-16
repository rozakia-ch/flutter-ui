import 'package:flutter_ui/src/constants/api_constants.dart';
import 'package:flutter_ui/src/travel_ui/models/activity.dart';
import 'package:flutter_ui/src/travel_ui/models/destination.dart';
import 'package:flutter_ui/src/travel_ui/models/hotel.dart';

class Data {
  static List<Activity> activities = [
    Activity(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/stmarksbasilica.jpg',
      name: 'St. Mark\'s Basilica',
      type: 'Sightseeing Tour',
      startTimes: ['9:00 am', '11:00 am'],
      rating: 5,
      price: 30,
    ),
    Activity(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/gondola.jpg',
      name: 'Walking Tour and Gonadola Ride',
      type: 'Sightseeing Tour',
      startTimes: ['11:00 pm', '1:00 pm'],
      rating: 4,
      price: 210,
    ),
    Activity(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/murano.jpg',
      name: 'Murano and Burano Tour',
      type: 'Sightseeing Tour',
      startTimes: ['12:30 pm', '2:00 pm'],
      rating: 3,
      price: 125,
    ),
  ];

  static List<Destination> destinations = [
    Destination(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/venice.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/paris.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/newdelhi.jpg',
      city: 'New Delhi',
      country: 'India',
      description: 'Visit New Delhi for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/saopaulo.jpg',
      city: 'Sao Paulo',
      country: 'Brazil',
      description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/newyork.jpg',
      city: 'New York City',
      country: 'United States',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      activities: activities,
    ),
  ];
  static List<Hotel> hotels = [
    Hotel(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/hotel0.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175,
    ),
    Hotel(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/hotel1.jpg',
      name: 'Hotel 1',
      address: '404 Great St',
      price: 300,
    ),
    Hotel(
      imageUrl: '${ApiConstants.BASE_URL_IMAGE}/travel_ui/hotel2.jpg',
      name: 'Hotel 2',
      address: '404 Great St',
      price: 240,
    ),
  ];
}
