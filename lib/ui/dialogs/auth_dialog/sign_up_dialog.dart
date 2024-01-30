import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wanderlust_expeditions/ui/common/sign_up_field.dart';

import '../../common/ui_helpers.dart';
import '../../widgets/imageSlider/image_slider.dart';

class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});

  @override
  State<SignUpDialog> createState() => _SignUpDialogState();
}

class _SignUpDialogState extends State<SignUpDialog> {
  bool isLoading = false;
  final formkey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  // ignore: prefer_typing_uninitialized_variables
  String mob = '';
  String reEnterpassword = '';
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reEnterPasswordController =
      TextEditingController();

  late String uid;

  // User? user;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    mobileController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    reEnterPasswordController.dispose();
    super.dispose();
  }

  // UserAuthorization userAuth = UserAuthorization();
  // FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: const Color(0XFFfcf8ef),
      alignment: Alignment.center,
      elevation: 20,
      child: SizedBox(
        height: screenHeight(context) / 1.5,
        width: 760,
        child: Form(
          key: formkey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 400,
                child: ImageSlider(
                  imgUrl1: 'assets/images/sliderImage4.jpeg',
                  imgUrl2: 'assets/images/sliderImage6.jpeg',
                  imgUrl3: 'assets/images/sliderImage7.jpeg',
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            const Spacer(),
                            const Text(
                              'Sign-Up',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Afacad',
                                color: Color(0xFF000000),
                                letterSpacing: 1.2,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.close_rounded,
                                color: Colors.black,
                                size: 26,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Don't Worry it's Completely Free",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Afacad',
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SignUpField(
                          keyBoardType: TextInputType.name,
                          maxLength: 20,
                          suffixText: null,
                          obscureText: null,
                          labelText: 'First Name',
                          controller: firstNameController,
                        ),
                        verticalSpaceSmall,
                        SignUpField(
                          keyBoardType: TextInputType.name,
                          maxLength: 20,
                          suffixText: null,
                          obscureText: null,
                          labelText: 'Last Name',
                          controller: lastNameController,
                        ),
                        verticalSpaceSmall,
                        SignUpField(
                          keyBoardType: TextInputType.phone,
                          maxLength: 10,
                          suffixText: null,
                          obscureText: null,
                          labelText: 'Mobile No.',
                          controller: mobileController,
                        ),
                        verticalSpaceSmall,
                        SignUpField(
                          keyBoardType: TextInputType.emailAddress,
                          maxLength: null,
                          suffixText: null,
                          obscureText: null,
                          labelText: 'E-mail',
                          controller: emailController,
                        ),
                        verticalSpaceSemiMedium,
                        SignUpField(
                          keyBoardType: TextInputType.visiblePassword,
                          maxLength: 15,
                          suffixText: null,
                          obscureText: true,
                          labelText: 'Password',
                          controller: passwordController,
                        ),
                        verticalSpaceSmall,
                        SignUpField(
                          keyBoardType: TextInputType.visiblePassword,
                          maxLength: 15,
                          suffixText: null,
                          obscureText: true,
                          labelText: 'Re-Enter Password',
                          controller: reEnterPasswordController,
                        ),
                        verticalSpaceSmall,
                        ElevatedButton(
                          onPressed: () async {
                            if (passwordController.text ==
                                reEnterPasswordController.text) {
                              final isValidfrom =
                                  formkey.currentState!.validate();
                              if (isValidfrom) {
                                setState(() {
                                  email =
                                      emailController.text.toString().trim();
                                  firstname = firstNameController.text
                                      .toString()
                                      .trim();
                                  lastname =
                                      lastNameController.text.toString().trim();
                                  mob = mobileController.text.toString().trim();
                                  password =
                                      passwordController.text.toString().trim();
                                  reEnterpassword = reEnterPasswordController
                                      .text
                                      .toString()
                                      .trim();
                                });
                              }
                            } else {
                              Fluttertoast.showToast(
                                msg: "OOPS! Passwords didn't match",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: const Color(0xFF37BBE6),
                                fontSize: 16.0,
                              );
                            }
                            // await userAuth
                            //     .createuser(
                            //   mail: email,
                            //   passwrd: password,
                            // )
                            //     .then(
                            //       (value) {
                            //     user = userAuth.currentUser!;
                            //     uid = user!.uid;
                            //     FirebaseFirestore.instance
                            //         .collection('UserData')
                            //         .doc(uid)
                            //         .set({
                            //       "FirstName": firstname,
                            //       "LastName": lastname,
                            //       "email": email,
                            //       "Mob": mob,
                            //       "timestamp": Timestamp.now(),
                            //       "u-id": uid,
                            //     });
                            //   },
                            // ).whenComplete(
                            //       () {
                            //     if (context.mounted) {
                            //       Navigator.of(context).pushAndRemoveUntil(
                            //           MaterialPageRoute(
                            //             builder: (context) => SignUpWelcomePage(
                            //               fname: firstname,
                            //               lname: lastname,
                            //               mail: email,
                            //               passwrd: password,
                            //               repasswrd: reEnterpassword,
                            //               mobnum: mob,
                            //             ),
                            //           ),
                            //               (route) => (false));
                            //     }
                            //   },
                            // );
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            backgroundColor: const Color(0xFFFFFFFF),
                            foregroundColor: const Color(0xFF37BBE6),
                            side: const BorderSide(
                                color: Color(0xFF37BBE6), width: 1),
                            // padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                            textStyle: const TextStyle(
                              fontFamily: 'Afacad',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          child: const Text('Sign-Up'),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
