import 'package:finalproject_pmoif20a_nurhakim/controllers/users_controller.dart';
import 'package:finalproject_pmoif20a_nurhakim/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  TextEditingController textUsername = TextEditingController();
  TextEditingController textFristname = TextEditingController();
  TextEditingController textLastname = TextEditingController();
  TextEditingController textAddress = TextEditingController();
  TextEditingController textPassword = TextEditingController();
  TextEditingController textRole = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final usersC = Get.put(UsersController());

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Username
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                //
                Container(
                  height: 25,
                  child: TextField(
                    controller: textUsername,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //textFristname
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fristname',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),

                Container(
                  height: 25,
                  child: TextField(
                    controller: textFristname,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //lastname
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lastname',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),

                Container(
                  height: 25,
                  child: TextField(
                    controller: textLastname,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),

                Container(
                  height: 25,
                  child: TextField(
                    controller: textAddress,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Password
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Password',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                Container(
                  height: 25,
                  child: TextField(
                    controller: textPassword,
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
              top: 28,
              bottom: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Role (Admin/User)',
                  style: rosarivo.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),

                Container(
                  height: 25,
                  child: TextField(
                    controller: textRole,
                    textInputAction: TextInputAction.next,
                    style: openSans.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Login
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: TextButton(
              onPressed: () =>
                  usersC.register(textUsername.text, textFristname.text, textLastname.text, textAddress.text, textPassword.text, textRole.text),
              child: Text(
                'Register',
                style: rosarivo.copyWith(
                  color: bgColor,
                  fontSize: 20,
                  fontWeight: semibold,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}