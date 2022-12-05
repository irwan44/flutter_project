import 'package:flutter/material.dart';
import 'package:d_medis_ios_apps/screens/doctor_detail.dart';
import 'package:d_medis_ios_apps/screens/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => Home(),
  '/detail': (context) => SliverDoctorDetail(),
};
