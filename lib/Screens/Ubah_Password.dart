import 'dart:io';
import 'package:flutter/material.dart';
import 'package:d_medis_ios_apps/Screens/signup_screen.dart';
import 'package:flutter_svg/svg.dart';
import 'package:d_medis_ios_apps/Screens/home.dart';


class UbahProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<UbahProfile> {

  
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  initWidget() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Text("Password Baru Harus berbeda dari Password yang digunakan sebelumnya "),
              ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 20, right: 20, top: 50),
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 54,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE)),
            ],
          ),
          child: TextField(
            cursorColor: Color.fromARGB(255, 31, 177, 245),
            decoration: InputDecoration(
              icon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 31, 177, 245),
              ),
              hintText: "Password Lama",
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
                  color: Color(0xffEEEEEE)),
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
              hintText: "Masukan Password Baru",
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
                  color: Color(0xffEEEEEE)),
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
              hintText: "Konfirmasi Password Baru",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        //   alignment: Alignment.centerRight,
        //   child: GestureDetector(
        //     onTap: () {
        //       // Write Click Listener Code Here
        //     },
        //     child: Text("Lupa Password ?"),
        //   ),
        // ),
        GestureDetector(
          onTap: () {
             Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ));
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 70),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [(Color.fromARGB(255, 31, 177, 245)), Color.fromARGB(255, 77, 193, 247)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            
            child: Text(
              "LOGIN",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        // Container(
        //   margin: EdgeInsets.only(top: 10),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("Tidak Punya Akun ? "),
        //       GestureDetector(
        //         child: Text(
        //           "Register Sekarang!!",
        //           style: TextStyle(color: Color.fromARGB(255, 31, 177, 245)),
        //         ),
        //         onTap: () {
        //           // Write Tap Code Here.
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                 builder: (context) => SignUpScreen(),
        //               ));
        //         },
        //       )
        //     ],
        //   ),
        // )
      ],
    )));
  }
}
