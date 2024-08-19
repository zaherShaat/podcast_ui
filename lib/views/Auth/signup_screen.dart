import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/auth_form_field.dart';
import 'package:pod_mood/components/main_btn.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Auth/Components/checkbox_tile.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameC = TextEditingController();

  bool _recieveMailsVal = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(kToolbarHeight),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up",
                  style: theme.textTheme.displayLarge,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(9),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up and Start Learning",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            AuthFormField(
              hint: "User Name",
              iconWidget: SvgPicture.asset(
                profileIconAsset,
                height: getProportionateScreenHeight(13),
                width: getProportionateScreenWidth(10),
              ),
              controller: _usernameC,
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            AuthFormField(
              hint: "Email Address",
              iconWidget: SvgPicture.asset(
                mailIconAsset,
                height: getProportionateScreenHeight(13),
                width: getProportionateScreenWidth(10),
              ),
              controller: _usernameC,
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            AuthFormField(
              hint: "Password",
              iconWidget: SvgPicture.asset(
                lockIconAsset,
                height: getProportionateScreenHeight(13),
                width: getProportionateScreenWidth(10),
              ),
              controller: _usernameC,
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            CheckBoxTile(
              value: _recieveMailsVal,
              fillColor: binky,
              onChanged: (newValue) {
                setState(() {
                  _recieveMailsVal = newValue!;
                });
              },
              label:
                  "Yes! I want to get the most out of Ezymaster by receiving emails with exclusive deals and learning tips!",
            ),
            SizedBox(
              height: getProportionateScreenHeight(22),
            ),
            GradientMainBtn(
              onPressed: () {},
              label: "Sign up",
            ),
            SizedBox(
              height: getProportionateScreenHeight(22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "OR",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(21),
            ),
            MainBtn(
              onPressed: () {},
              label: "Continue with Google",
              backColor: Colors.white,
              txtColor: Colors.black,
              bold: true,
              iconWidget: SvgPicture.asset(
                googleLogo,
              ),
              // iconData: Icons.g_mobiledata,
              // iconColor: Colors.white,
              // iconSize: 20,
            ),
            SizedBox(
              height: getProportionateScreenHeight(13),
            ),
            MainBtn(
              iconWidget: SvgPicture.asset(
                facebookLogo,
              ),
              // iconData: Icons.facebook,
              // iconColor: Colors.white,
              // iconSize: 20,
              onPressed: () {},
              label: "Continue with Facebook",
              backColor: btnBlue,
              bold: true,
              txtColor: Colors.white,
            ),
            SizedBox(
              height: getProportionateScreenHeight(56),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: theme.textTheme.labelLarge,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: binky),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
