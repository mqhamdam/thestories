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
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 130.0, bottom: 10),
              child: Text(
                'The Stories',
                style: TextStyle(
                  fontFamily: 'IMFellEnglish',
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
                          'assets/icons/fi-rr-at.svg',
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints.tightFor(),
                      label: const Text('Email'),
                    ),
                  ),
                  const SizedBox(
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
                          'assets/icons/fi-rr-lock-alt.svg',
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints.tightFor(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 20),
                        child: SvgPicture.asset(
                          'assets/icons/fi-rr-eye.svg',
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints.tightFor(),
                      label: const Text('Password'),
                    ),
                  ),
                  const SizedBox(
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
                          'assets/icons/fi-rr-lock-alt.svg',
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints.tightFor(),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: SvgPicture.asset(
                          'assets/icons/fi-rr-eye.svg',
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints.tightFor(),
                      label: const Text('Password verification'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      subtitle: const Text(
                        'I have read and agreed with the terms and conditions.',
                      ),
                      trailing: Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: const CircleBorder(),
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
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(33),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'LOGIN',
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
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
