import 'package:d_medis_ios_apps/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:d_medis_ios_apps/Screens/Register_Klinik.dart';
import 'package:d_medis_ios_apps/screens/doctor_detail.dart';
import 'package:d_medis_ios_apps/Screens/Daftarklink.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => SplashScreen(),
  '/detail': (context) => const SliverDoctorDetail(),
  '/registerklinik': (context) => const RegisterKlinik(),
  '/listpoli': (context) => const DaftarKlinik(),
};