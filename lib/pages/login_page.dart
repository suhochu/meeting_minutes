import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meeting_minutes/components/buttons.dart';
import 'package:meeting_minutes/models/meeting_resource_controller.dart';
import 'package:meeting_minutes/pages/resource_manage_page.dart';
import 'package:meeting_minutes/theme/color_style.dart';
import 'package:meeting_minutes/pages/meeting_home.dart';

class LoginPage extends GetView<MeetingSourceController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appWidth = Get.width;
    double appHeight = Get.height;
    Map<String, Color> selectedColors = colorSetting[0];

    return Stack(children: [
      SizedBox(
        width: double.infinity,
        child: Image.asset(
          'assets/images/login.png',
          fit: BoxFit.fill,
          height: appHeight,
          width: appWidth,
        ),
      ),
      Positioned(
        bottom: 50,
        child: SizedBox(
          width: appWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              loginButton(const Text('로컬에서 로그인'), () {
                Get.off(controller.projects.isEmpty ? ResourceManagementPage(first: true,) : MeetingHomePage());
              }),
              const SizedBox(
                height: 30,
              ),
              loginButton(const Text('서버에서 로그인'), () {}),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Text(
                  '아직 계정이 없으신가요? Sign Up!',
                  style: TextStyle(
                    fontSize: 10,
                    fontStyle: FontStyle.italic,
                    color: selectedColors['TEXT_ICONS']!.withOpacity(0.8),
                  ),
                ),
                onTap: () {
                  print('Go To SignUp!');
                },
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
