import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:d_medis_ios_apps/styles/colors.dart';
import 'package:d_medis_ios_apps/styles/styles.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pageview_widget_indicator/pageview_widget_indicator.dart';
import 'package:d_medis_ios_apps/constants.dart';
import "package:latlong2/latlong.dart" as latLng;

class DaftarKlinik extends StatelessWidget {
  const DaftarKlinik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Register Klinik'),
            backgroundColor: Color.fromARGB(255, 45, 134, 236),
            expandedHeight: 80,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/images/hospital.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: DetailBody(),
          )
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
                  color: Colors.white,
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

class DetailBody extends StatelessWidget {
  const DetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // DetailDoctorCard(),
          SizedBox(
            height: 15,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '  Pilih Lokasi Sesuai Kota Anda',
                  style: kTitleStyle,
                ),
              ],
            ),
          spinner(),
          SizedBox(
            height: 25,
          ),
          
          
          SizedBox(
            height: 25,
          ),
          for (var doctor in doctors)
            TopDoctorCard(
              img: doctor['img'],
              doctorName: doctor['doctorName'],
              doctorTitle: doctor['doctorTitle'],
            )
        ],
      ),
    );
  }
}

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
