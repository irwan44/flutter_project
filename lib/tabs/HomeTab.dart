import 'package:d_medis_ios_apps/Screens/Daftarklink.dart';
import 'package:d_medis_ios_apps/Screens/Profile.dart';
import 'package:d_medis_ios_apps/Screens/login_screen.dart';
import 'package:d_medis_ios_apps/Screens/signup_screen.dart';
import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:d_medis_ios_apps/routes/router.dart';
import 'package:d_medis_ios_apps/styles/colors.dart';
import 'package:d_medis_ios_apps/styles/styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:d_medis_ios_apps/icon_generator/my_flutter_app_icons.dart';
import 'package:d_medis_ios_apps/responsive.dart';

class HomeTab extends StatelessWidget {
  final void Function() onPressedScheduleCard;

  const HomeTab({
    Key? key,
    required this.onPressedScheduleCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            UserIntro(),
            SizedBox(
              height: 10,
            ),
            spinner(),
            SizedBox(
              height: 20,
            ),
            Categories(),
            SizedBox(
              height: 20,
            ),
             Categories2(),
            SizedBox(
              height: 20,
            ),
            //  CategoryIcons3(),
            // SizedBox(
            //   width: 40,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jadwal Dokter',
                  style: kTitleStyle,
                ),
                TextButton(
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(
                      color: Color(MyColors.yellow01),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AppointmentCard(
              onTap: onPressedScheduleCard,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Klinik Terdekat',
                  style: kTitleStyle,
                ),
                TextButton(
                  child: Text(
                    'Lihat Semua',
                    style: TextStyle(
                      color: Color(MyColors.yellow01),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            for (var doctor in doctors)
              TopDoctorCard(
                img: doctor['img'],
                doctorName: doctor['doctorName'],
                doctorTitle: doctor['doctorTitle'],
              )
          ],
        ),
      ),
    );
  }
}

List<Map> doctors = [
  {
    'img': 'assets/images/poli1.png',
    'doctorName': 'Klinik Omega Citra Raya',
    'doctorTitle': 'Jl Arya Jaya Santika RT 02 RW 03 '
  },
  {
    'img': 'assets/images/poli2.png',
    'doctorName': 'Klinik Omega Citra Raya',
    'doctorTitle': 'Jl Arya Jaya Santika RT 02 RW 03'
  },
  {
    'img': 'assets/images/poli1.png',
    'doctorName': 'Klinik Omega Citra Raya',
    'doctorTitle': 'Jl Arya Jaya Santika RT 02 RW 03'
  },
  {
    'img': 'assets/images/poli2.png',
    'doctorName': 'Klinik Omega Citra Raya',
    'doctorTitle': 'Jl Arya Jaya Santika RT 02 RW 03'
  }
];

class TopDoctorCard extends StatelessWidget {
  String img;
  String doctorName;
  String doctorTitle;

  TopDoctorCard({
    required this.img,
    required this.doctorName,
    required this.doctorTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail');
        },
        child: Row(
          children: [
            Container(
              color: Color(MyColors.grey01),
              child: Image(
                width: 100,
                image: AssetImage(img),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: TextStyle(
                    color: Color(MyColors.header01),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                // Text(
                //   doctorTitle,
                //   style: TextStyle(
                //     color: Color(MyColors.grey02),
                //     fontSize: 12,
                //     fontWeight: FontWeight.w600,
                //   ),
                // ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.map_sharp,
                      color: Color.fromARGB(255, 31, 177, 245),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      doctorTitle,
                      style: TextStyle(
                        color: Color(MyColors.grey02),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AppointmentCard extends StatelessWidget {
  final void Function() onTap;

  const AppointmentCard({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 31, 177, 245),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/doctor01.jpeg'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dr.Muhammed Syahid',
                                style: TextStyle(color: Colors.white)),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Dental Specialist',
                              style: TextStyle(color: Color(MyColors.text01)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ScheduleCard(),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 20),
        //   width: double.infinity,
        //   height: 10,
        //   decoration: BoxDecoration(
        //     color: Color(MyColors.bg02),
        //     borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(10),
        //       bottomLeft: Radius.circular(10),
        //     ),
        //   ),
        // ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 40),
        //   width: double.infinity,
        //   height: 10,
        //   decoration: BoxDecoration(
        //     color: Color(MyColors.bg03),
        //     borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(10),
        //       bottomLeft: Radius.circular(10),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}

// List<Map> categories1 = [
//   {'icon1': MyFlutterApp.group_98, 'text1': 'Registrasi Klinik'},
//   {'icon1': MyFlutterApp.frame, 'text1': 'Registrasi Telemedical'},
//   {'icon1': MyFlutterApp.group_96, 'text1': 'Daftar Antrian'},
// ];
// List<Map> categories2 = [
//   {'icon2': MyFlutterApp.group_95, 'text2': 'Registrasi Klinik'},
//   {'icon2': MyFlutterApp.group_97, 'text2': 'Informasi Dokter'},
//   {'icon2': Icons.local_hospital, 'text2': 'Info D-Medis'},
// ];
// List<Map> categories3 = [
//   // {'icon3': MyFlutterApp.group_95, 'text3': 'Daftar Antrian'},
//   // {'icon3': MyFlutterApp.group_97, 'text3': 'Informasi Dokter'},
//   // {'icon3': Icons.local_hospital, 'text3': 'Info D-Medis'},
// ];

// List<Map> categories1 = [
//   {'icon1': MyFlutterApp.group_98, 'text1': 'Registrasi Klinik'},
//   {'icon1': MyFlutterApp.frame, 'text1': 'Registrasi Telemedical'},
//   {'icon1': MyFlutterApp.group_96, 'text1': 'Daftar Antrian'},
// ];
// List<Map> categories2 = [
//   {'icon2': MyFlutterApp.group_95, 'text2': 'Daftar Antrian'},
//   {'icon2': MyFlutterApp.group_97, 'text2': 'Informasi Dokter'},
//   {'icon2': Icons.local_hospital, 'text2': 'Info D-Medis'},
// ];
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Registrasi_Klinik.svg", "text": "Registrasi Klinik"},
      {"icon": "assets/icons/Registrasi_Telemedical.svg", "text": "Registrasi Telemedical"},
      {"icon": "assets/icons/Daftar_Antrian.svg", "text": "Daftar Antrian"},
      {"icon": "assets/icons/Riwayat_Medis.svg", "text": "Riwayat Medis"},
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {if(index==0){
                Navigator.push(
                   context,
                    MaterialPageRoute(builder: (context) => DaftarKlinik()),
                );
              }
               if(index==1){
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                       );
                       }
                       },
                     ),
                    ),
                   );
                  }
                }

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (75),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all((15)),
              height: (55),
              width: (95),
              decoration: BoxDecoration(          
                color: Color.fromARGB(255, 230, 245, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Categories2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Daftar_Antrian.svg", "text": "Profile Pasien"},
      {"icon": "assets/icons/Informasi_Dokter.svg", "text": "Info SIR-S"},
      {"icon": "assets/icons/Registrasi_Klinik.svg", "text": "Info D-Medis"},
      {"icon": "assets/icons/Registrasi_Telemedical.svg", "text": "More"},
    ];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryCard2(
            icon: categories[index]["icon"],
            text: categories[index]["text"],
            press: () {},
          ),
        ),
    );
  }
}

class CategoryCard2 extends StatelessWidget {
  const CategoryCard2({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: (75),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all((15)),
              height: (55),
              width: (95),
              decoration: BoxDecoration(          
                color: Color.fromARGB(255, 230, 245, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            ),
            SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CategoryIcons2 extends StatelessWidget {
//   const CategoryIcons2({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         for (var category in categories2)
//           CategoryIcon2(
//             icon2: category['icon2'],
//             text2: category['text2'],
             
//           ),
//       ],
//     );
//   }
// }

// class CategoryIcon2 extends StatelessWidget {
//   IconData icon2;
//   String text2;

//   CategoryIcon2({
//     required this.icon2,
//     required this.text2,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       splashColor: Color(MyColors.bg01),
//       onTap: () {
//         Navigator.pushNamed(context, '/registerklinik');
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: Column(
//           children: [
//             Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 230, 245, 255),
//                 borderRadius: BorderRadius.circular(50),
//               ),
//               child: Icon(
//                 icon2,
//                 color: Color.fromARGB(255, 31, 177, 245),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Text(
//               text2,
//               style: TextStyle(
//                 color: Color.fromARGB(255, 31, 177, 245),
//                 fontSize: 12,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 91, 186, 250),
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.calendar_today,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Mon, July 29',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.access_alarm,
            color: Colors.white,
            size: 17,
          ),
          SizedBox(
            width: 5,
          ),
          Flexible(
            child: Text(
              '11:00 ~ 12:10',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

final List<String> items = [
  'Item1',
  'Item2',
  'Item3',
  'Item4',
  'Item5',
  'Item6',
  'Item7',
  'Item8',
];

String? selectedValue;

class spinner extends StatelessWidget {
  const spinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Icon(
                      Icons.location_history,
                      size: 16,
                      color: Color.fromARGB(255, 78, 78, 78),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Text(
                        'Silahkan pilih lokasi',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 78, 78, 78),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Color.fromARGB(255, 29, 29, 28),
                iconDisabledColor: Colors.grey,
                buttonHeight: 50,
                buttonWidth: 160,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Color.fromARGB(255, 230, 245, 255),
                ),
                buttonElevation: 0,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: 200,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Morning';
  }
  if (hour < 17) {
    return 'Afternoon';
  }
  return 'Evening';
}

class UserIntro extends StatelessWidget {
  const UserIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hello',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              'Irwan Setiawan',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              '25736320097',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        InkWell(
          onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
            },
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/person.jpeg'),
        )
        ),
      ],
    );
  }
}
