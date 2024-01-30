import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wanderlust_expeditions/ui/common/ui_helpers.dart';
import 'package:wanderlust_expeditions/ui/dialogs/auth_dialog/sign_up_dialog.dart';
import 'package:wanderlust_expeditions/ui/widgets/imageSlider/image_slider.dart';

import '../../common/sign_in_field.dart';
import '../info_alert/info_alert_dialog_model.dart';

class AuthDialogMobile extends StackedView<InfoAlertDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  AuthDialogMobile({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  final formkey = GlobalKey<FormState>();

  Future<void> _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw Exception('could not launch $uri');
    }
  }

  TextSpan _linkTextSpan(String text, String url) {
    return TextSpan(
      text: text,
      style: const TextStyle(color: Color(0xFF40C4FF)),
      recognizer: TapGestureRecognizer()
        ..onTap = () {
          _launchURL(url);
        },
    );
  }

  @override
  Widget builder(
      BuildContext context,
      InfoAlertDialogModel viewModel,
      Widget? child,
      ) {
    late bool isLoading = false;
    // String email = '';
    // String password = '';
    TextEditingController emailController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: const Color(0XFFfcf8ef),
      alignment: Alignment.center,
      elevation: 20,
      child: SizedBox(
        height: screenHeight(context) / 1.5,
        width: screenWidth(context)/1,
        child: Form(
          key: formkey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                    const Text(
                      'Access Wonderland',
                      style: TextStyle(
                        color: Color(0XFFE53935),
                        fontSize: 22,
                        fontFamily: 'Afacad',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.close_rounded,
                        size: 24,
                        color: Color(0XFF103850),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'E-mail/Mobile Number',
                        style: TextStyle(
                          color: Color(0XFF103850),
                          fontSize: 16,
                          fontFamily: 'Afacad',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    verticalSpaceMedium,
                    SignInfield(
                      controller: emailController,
                      keyBoardType: TextInputType.emailAddress,
                      maxLength: null,
                      suffixText: null,
                      obscureText: null,
                      labelText: 'e-mail/mobile',
                    ),
                  ],
                ),
                verticalSpaceSemiMedium,
                ElevatedButton(
                  onPressed: () async {
                    final isValidForm = formkey.currentState!.validate();
                    // if (u_id == uid) {}
                    if (isValidForm) {
                      // setState(() {
                      //   email = emailController.text.toString();
                      //   password = passController.text.toString();
                      // });
                      // userAuth
                      //     .signin(
                      //   mail: emailController.text.trim(),
                      //   passwrd: passController.text.trim(),
                      // )
                      //     .then(
                      //       (signInSuccess) {
                      //     if (signInSuccess == true) {
                      //       Navigator.of(context).pushAndRemoveUntil(
                      //           MaterialPageRoute(
                      //             builder: (context) => HomePage(
                      //               email: email,
                      //             ),
                      //           ),
                      //               (route) => (false));
                      //     }
                      //   },);
                    } else {
                      Fluttertoast.showToast(
                        msg: "Account not Valid. Please Try Again.",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.SNACKBAR,
                        timeInSecForIosWeb: 2,
                        backgroundColor: const Color(0XFF000000),
                        textColor: const Color(0xFF37BBE6),
                        fontSize: 16.0,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: const Color(0xFFFFFFFF),
                      foregroundColor: const Color(0xFF37BBE6),
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                      // side: const BorderSide(color: Color(0xFF40C4FF), width: 3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      fixedSize: const Size(260, 40)),
                  child: isLoading
                      ? const CircularProgressIndicator(
                    strokeWidth: 4,
                    semanticsLabel: 'Circular progress indicator',
                  )
                      : const Text(
                    'Sign-In',
                    style: TextStyle(
                      fontFamily: 'Afacad',
                      fontSize: 16,
                      color: Color(0XFF103850),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) =>
                      const SignUpDialog(),
                    );
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF40C4FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.ltr,
                    text: const TextSpan(
                        style: TextStyle(
                          fontFamily: 'Afacad',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Color(0XFF103850),
                        ),
                        children: <TextSpan>[
                          TextSpan(text: "Don't Have an Account ?"),
                          TextSpan(
                            text: " Sign Up",
                            style: TextStyle(color: Color(0xFF40C4FF)),
                          ),
                        ]),
                  ),
                ),
                verticalSpaceSemiMedium,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Afacad'),
                    children: <TextSpan>[
                      const TextSpan(
                          text: 'By proceeding, you agree to our '),
                      _linkTextSpan('Privacy Policy', ''),
                      const TextSpan(text: ', '),
                      _linkTextSpan('User Agreement', ''),
                      const TextSpan(text: ' and '),
                      _linkTextSpan('T&Cs', ''),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  InfoAlertDialogModel viewModelBuilder(BuildContext context) =>
      InfoAlertDialogModel();
}
