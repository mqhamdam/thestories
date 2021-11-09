import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[100],
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0, bottom: 10),
              child: Text(
                "The Stories",
                style: TextStyle(
                  fontFamily: "IMFellEnglish",
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15),
                        child: SvgPicture.asset(
                          "assets/icons/fi-rr-at.svg",
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints.tightFor(),
                      label: Text("Email"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15),
                        child: SvgPicture.asset(
                          "assets/icons/fi-rr-lock-alt.svg",
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints.tightFor(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 20),
                        child: SvgPicture.asset(
                          "assets/icons/fi-rr-eye.svg",
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints.tightFor(),
                      label: Text("Password"),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(33),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 15),
                        child: SvgPicture.asset(
                          "assets/icons/fi-rr-lock-alt.svg",
                        ),
                      ),
                      prefixIconConstraints: BoxConstraints.tightFor(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset(
                          "assets/icons/fi-rr-eye.svg",
                        ),
                      ),
                      suffixIconConstraints: BoxConstraints.tightFor(),
                      label: Text("Password verification"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: Text(
                          "I have read and agreed with the terms and conditions."),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ButtonStyle(
                              // backgroundColor:
                              //     MaterialStateProperty.all(Colors.deepPurple),
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                              ),
                            ),
                            onPressed: () {
                              
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(fontSize: 24),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(33)),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () {},
              child: Text(
                "Forgot Password",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
