import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:d_medis_ios_apps/Screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
              children: [
               Container(
          height: 300,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                child: SvgPicture.asset(
                "assets/icons/login.svg",
              ),
              ),
            ],
          )),
        ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.payment,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Nik Pasien",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[200],
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Nama Lengkap",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Alamat Email",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                    child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "No. Telephone",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                    child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.supervised_user_circle,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "User Name",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                    child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.location_city,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Alamat",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                    child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.medical_services,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Alergi",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                    child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.health_and_safety_rounded,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Golongan",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.man,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Jenis Kelamin",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                  Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xffEEEEEE),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 20),
                          blurRadius: 100,
                          color: Color(0xffEEEEEE)
                      ),
                    ],
                  ),
                  child: TextField(
                    cursorColor: Color.fromARGB(255, 31, 177, 245),
                    decoration: InputDecoration(
                      focusColor: Color.fromARGB(255, 31, 177, 245),
                      icon: Icon(
                        Icons.vpn_key,
                        color: Color.fromARGB(255, 31, 177, 245),
                      ),
                      hintText: "Confirm Password",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    // Write Click Listener Code Here.
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient( colors: [(Color.fromARGB(255, 31, 177, 245)), Color.fromARGB(255, 77, 193, 247)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: Text(
                      "REGISTER",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah Punya Akun ?  "),
                      GestureDetector(
                        child: Text(
                          "Lanjut Login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 31, 177, 245)
                          ),
                        ),
                        onTap: () {  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                        },
                      )
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}