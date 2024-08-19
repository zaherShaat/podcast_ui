import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pod_mood/components/auth_form_field.dart';
import 'package:pod_mood/components/main_btn.dart';
import 'package:pod_mood/configs/SizeConfig.dart';
import 'package:pod_mood/configs/constants.dart';
import 'package:pod_mood/views/Auth/Components/checkbox_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMeVal = true;

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
          child: Column(
            children: <Widget>[
              // SizedBox(
              //   height: getProportionateScreenHeight(kToolbarHeight),
              // ),
              SvgPicture.asset(logoAsset),
              SizedBox(
                height: getProportionateScreenHeight(29),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back!",
                    style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login to continue Radio App",
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(27),
              ),
              AuthFormField(
                icon: Icons.email_outlined,
                hint: "Email Address",
                secondaryIconColor: deluge,
                controller: _emailController,
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              AuthFormField(
                icon: Icons.lock,
                hint: "Password",
                secondaryIconColor: deluge,
                controller: _passwordController,
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CheckBoxTile(
                      value: _rememberMeVal,
                      onChanged: (newValue) {
                        setState(() {
                          _rememberMeVal = newValue!;
                        });
                      },
                      label: "Remember me",
                    ),
                  ),
                  // const Spacer(
                  //   flex: 1,
                  // ),
                  const InkWell(
                    child: Text("Forgot password?"),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(18),
              ),
              GradientMainBtn(
                onPressed: () {},
                label: "Log In",
              ),
              SizedBox(
                height: getProportionateScreenHeight(22),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "OR",
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
                height: getProportionateScreenHeight(23),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sign up",
                      style: TextStyle(color: binky),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(58),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: InkWell(
                      onTap: () {},
                      child: const Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "By signing up you indicate that you have read and agreed to the Patch",
                            ),
                            TextSpan(
                              text: " Terms of Service",
                              style: TextStyle(color: binky),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
