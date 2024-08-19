import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/auth_form_field.dart';
import 'package:pod_mood/components/main_btn.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController _emailC = TextEditingController();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const Spacer(
              flex: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forget Password",
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
                Expanded(
                  child: Text(
                    "Enter your email address below. We'll look for your account and send you a password reset email.",
                    style: theme.textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
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
              controller: _emailC,
            ),
            SizedBox(
              height: getProportionateScreenHeight(18),
            ),
            GradientMainBtn(
              onPressed: () {},
              label: 'Send Password Reset',
            ),
            // SizedBox(
            //   height: getScreenHeight(2),
            // ),
            const Spacer(
              flex: 10,
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
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
